from proto.form_errors import *
from proto.home import *
from proto.sfiles import *
from proto.socket_api import *
from proto.authentication import *
from proto.uploader import *
from abc import ABC
from proto.zero_waste import *
from proto.containers import *
import dataclasses
from proto.rewards import *
from betterproto import *


class RxMessageData:
    def __init__(self, json_data: dict):
        self.headers = json_data.get('headers')
        self.body = json_data.get('body')
        self.apiVersion = self.headers.get('apiVersion')
        self.authHeader = self.headers.get('authHeader')
        self.ack = self.headers.get('ack')
        self.uuid = self.headers.get('uuid')
        self.type = self.headers.get('messageType')
        self.retryCount = self.headers.get('retryCount', 0)


class RxMessage(ABC):
    proto = None
    type = None
    auth_required = True

    def __init__(self, data: RxMessageData, user=None):
        self.data = data
        self.set_data(data)
        self.user = user

    def set_data(self, data: RxMessageData):
        self.proto = self.proto().from_dict(data.body)

class TxMessage(ABC):
    proto: betterproto.Message = None
    type: str = None

    def __init__(self, proto=None):
        self.fields = {}
        if proto is not None:
            assert type(proto) is self.proto
            self.proto = proto
        else:
            self.proto = self.proto()

    def get_message(self) -> dict:
        return {
            'headers': {
                'messageType': self.type,
            },
            'body': self.proto.to_dict()
        }

def to_dict_patch(
        self, casing: Casing = Casing.CAMEL, include_default_values: bool = False
) -> dict:
    """
    Returns a dict representation of this message instance which can be
    used to serialize to e.g. JSON. Defaults to camel casing for
    compatibility but can be set to other modes.

    `include_default_values` can be set to `True` to include default
    values of fields. E.g. an `int32` type field with `0` value will
    not be in returned dict if `include_default_values` is set to
    `False`.
    """
    output: Dict[str, Any] = {}
    for field in dataclasses.fields(self):
        meta = FieldMetadata.get(field)
        v = getattr(self, field.name)
        cased_name = str(meta.number)
        if meta.proto_type == "message":
            if isinstance(v, datetime):
                if v != DATETIME_ZERO or include_default_values:
                    output[cased_name] = _Timestamp.timestamp_to_json(v)
            elif isinstance(v, timedelta):
                if v != timedelta(0) or include_default_values:
                    output[cased_name] = _Duration.delta_to_json(v)
            elif meta.wraps:
                if v is not None or include_default_values:
                    output[cased_name] = v
            elif isinstance(v, list):
                # Convert each item.
                v = [i.to_dict(casing, include_default_values) for i in v]
                if v or include_default_values:
                    output[cased_name] = v
            else:
                if v._serialized_on_wire or include_default_values:
                    output[cased_name] = v.to_dict(casing, include_default_values)
        elif meta.proto_type == "map":
            for k in v:
                if hasattr(v[k], "to_dict"):
                    v[k] = v[k].to_dict(casing, include_default_values)

            if v or include_default_values:
                output[cased_name] = [{'1': k, '2': v} for k, v in v.items()]
        elif v != self._get_field_default(field, meta) or include_default_values:
            if meta.proto_type in INT_64_TYPES:
                if isinstance(v, list):
                    output[cased_name] = [str(n) for n in v]
                else:
                    output[cased_name] = str(v)
            elif meta.proto_type == TYPE_BYTES:
                if isinstance(v, list):
                    output[cased_name] = [b64encode(b).decode("utf8") for b in v]
                else:
                    output[cased_name] = b64encode(v).decode("utf8")
            elif meta.proto_type == TYPE_ENUM:
                if isinstance(v, list):
                    output[cased_name] = [e for e in v]
                else:
                    output[cased_name] = v
            else:
                output[cased_name] = v
    return output


def from_dict_patch(self: T, value: dict) -> T:
    """
    Parse the key/value pairs in `value` into this message instance. This
    returns the instance itself and is therefore assignable and chainable.
    """
    self._serialized_on_wire = True
    fields_by_name = {str(FieldMetadata.get(f).number): f for f in dataclasses.fields(self)}
    for key in value:
        snake_cased = safe_snake_case(key)
        if snake_cased in fields_by_name:
            field = fields_by_name[snake_cased]
            meta = FieldMetadata.get(field)

            if value[key] is not None:
                if meta.proto_type == "message":
                    v = getattr(self, field.name)
                    if isinstance(v, list):
                        cls = self._betterproto.cls_by_field[field.name]
                        for i in range(len(value[key])):
                            v.append(cls().from_dict(value[key][i]))
                    elif isinstance(v, datetime):
                        v = datetime.fromisoformat(
                            value[key].replace("Z", "+00:00")
                        )
                        setattr(self, field.name, v)
                    elif isinstance(v, timedelta):
                        v = timedelta(seconds=float(value[key][:-1]))
                        setattr(self, field.name, v)
                    elif meta.wraps:
                        setattr(self, field.name, value[key])
                    else:
                        v.from_dict(value[key])
                elif meta.map_types and meta.map_types[1] == TYPE_MESSAGE:
                    v = getattr(self, field.name)
                    cls = self._betterproto.cls_by_field[field.name + ".value"]
                    for k in value[key]:
                        # fixme - map is converted to ['1': key, '2': value], which isn't consistent with betterproto
                        v[k] = cls().from_dict(value[key][k])
                else:
                    v = value[key]
                    if meta.proto_type in INT_64_TYPES:
                        if isinstance(value[key], list):
                            v = [int(n) for n in value[key]]
                        else:
                            v = int(value[key])
                    elif meta.proto_type == TYPE_BYTES:
                        if isinstance(value[key], list):
                            v = [b64decode(n) for n in value[key]]
                        else:
                            v = b64decode(value[key])
                    elif meta.proto_type == TYPE_ENUM:
                        # already in correct format as received
                        pass
                    elif meta.proto_type == TYPE_MAP:
                        v = {o['1']: o['2'] for o in value[key]}


                    if v is not None:
                        setattr(self, field.name, v)
    return self


def init_default_gen_patch(self):
    default_gen = {}

    for field in dataclasses.fields(self.cls):
        meta = FieldMetadata.get(field)
        if meta.proto_type == TYPE_MESSAGE:
            default_gen[field.name] = self.cls._get_field_default_gen(field, meta)
        else:
            default_gen[field.name] = lambda: None

    self.default_gen = default_gen


betterproto.Message.to_dict = to_dict_patch
betterproto.Message.from_dict = from_dict_patch
betterproto.ProtoClassMetadata.init_default_gen = init_default_gen_patch


class TxLoginToken(TxMessage):
    type = 'login-token'
    proto = LoginToken
    auth_required = True
    permissions = [None]


class TxLoginError(TxMessage):
    type = 'login-error'
    proto = LoginError
    auth_required = True
    permissions = [None]


class RxLogin(RxMessage):
    type = 'login'
    proto = Login
    auth_required = False
    permissions = [None]


class RxAppleLogin(RxMessage):
    type = 'apple-login'
    proto = AppleLogin
    auth_required = False
    permissions = [None]


class RxVerifyToken(RxMessage):
    type = 'verify-token'
    proto = VerifyToken
    auth_required = True
    permissions = [None]


class TxTokenInvalid(TxMessage):
    type = 'token-invalid'
    proto = TokenInvalid
    auth_required = True
    permissions = [None]


class TxFormErrors(TxMessage):
    type = 'form-errors'
    proto = FormErrors
    auth_required = True
    permissions = [None]


class TxUploadStartSlot(TxMessage):
    type = 'upload-start'
    proto = UploadStartSlot
    auth_required = True
    permissions = [None]


class TxUploadProgress(TxMessage):
    type = 'upload-progress'
    proto = UploadProgress
    auth_required = True
    permissions = [None]


class TxUploadDone(TxMessage):
    type = 'upload-done'
    proto = UploadDone
    auth_required = True
    permissions = [None]


class RxUploadStart(RxMessage):
    type = 'upload-start'
    proto = UploadStart
    auth_required = True
    permissions = [None]


class RxDeleteFile(RxMessage):
    type = 'delete-file'
    proto = DeleteFile
    auth_required = True
    permissions = [None]


class RxUploadEnd(RxMessage):
    type = 'upload-end'
    proto = UploadEnd
    auth_required = True
    permissions = [None]


class TxAck(TxMessage):
    type = 'ack'
    proto = Ack
    auth_required = True
    permissions = [None]


class TxUpgradeApiVersion(TxMessage):
    type = 'upgrade-api-version'
    proto = UpgradeApiVersion
    auth_required = True
    permissions = [None]


class TxUploadTask(TxMessage):
    type = 'upload-task'
    proto = UploadTask
    auth_required = True
    permissions = [None]


class TxWasteContainers(TxMessage):
    type = 'waste-containers'
    proto = WasteContainers
    auth_required = True
    permissions = [None]


class RxScanWasteContainer(RxMessage):
    type = 'scan-container'
    proto = ScanWasteContainer
    auth_required = True
    permissions = [None]


class TxScannedWasteContainer(TxMessage):
    type = 'scanned-container'
    proto = ScannedWasteContainer
    auth_required = True
    permissions = [None]


class RxLoadContainerInfo(RxMessage):
    type = 'load-container-info'
    proto = LoadContainerInfo
    auth_required = True
    permissions = [None]


class TxContainerInfo(TxMessage):
    type = 'container-info'
    proto = ContainerInfo
    auth_required = True
    permissions = [None]


class RxLoadContainerMass(RxMessage):
    type = 'load-container-mass'
    proto = LoadContainerMass
    auth_required = True
    permissions = [None]


class TxContainerMass(TxMessage):
    type = 'container-mass'
    proto = ContainerMass
    auth_required = True
    permissions = [None]


class RxLoadContainerImpact(RxMessage):
    type = 'load-container-impact'
    proto = LoadContainerImpact
    auth_required = True
    permissions = [None]


class TxContainerImpact(TxMessage):
    type = 'container-impact'
    proto = ContainerImpact
    auth_required = True
    permissions = [None]


class RxLoadContainerPurchases(RxMessage):
    type = 'load-container-purchases'
    proto = LoadContainerPurchases
    auth_required = True
    permissions = [None]


class TxContainerPurchases(TxMessage):
    type = 'container-purchases'
    proto = ContainerPurchases
    auth_required = True
    permissions = [None]


class RxGetHomeInfo(RxMessage):
    type = 'get-home-info'
    proto = GetHomeInfo
    auth_required = True
    permissions = [None]


class TxHomeInfo(TxMessage):
    type = 'home-info'
    proto = HomeInfo
    auth_required = True
    permissions = [None]


class RxLoadRewards(RxMessage):
    type = 'load-rewards'
    proto = LoadRewards
    auth_required = True
    permissions = [None]


class TxRewards(TxMessage):
    type = 'rewards'
    proto = Rewards
    auth_required = True
    permissions = [None]


class RxGetMagicLink(RxMessage):
    type = 'get-magic-link'
    proto = GetMagicLink
    auth_required = True
    permissions = [None]


class RxLoginMagicLink(RxMessage):
    type = 'login-magic-link'
    proto = LoginMagicLink
    auth_required = True
    permissions = [None]


class TxLoginMagicLinkStatus(TxMessage):
    type = 'login-magic-link-status'
    proto = LoginMagicLinkStatus
    auth_required = True
    permissions = [None]


class TxUserProfileData(TxMessage):
    type = 'user-profile-data'
    proto = UserProfileData
    auth_required = True
    permissions = [None]
