///
//  Generated code. Do not modify.
//  source: zero_waste.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getMagicLinkDescriptor instead')
const GetMagicLink$json = const {
  '1': 'GetMagicLink',
  '2': const [
    const {'1': 'mail', '3': 1, '4': 1, '5': 9, '10': 'mail'},
  ],
};

/// Descriptor for `GetMagicLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMagicLinkDescriptor = $convert.base64Decode('CgxHZXRNYWdpY0xpbmsSEgoEbWFpbBgBIAEoCVIEbWFpbA==');
@$core.Deprecated('Use loginMagicLinkDescriptor instead')
const LoginMagicLink$json = const {
  '1': 'LoginMagicLink',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LoginMagicLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginMagicLinkDescriptor = $convert.base64Decode('Cg5Mb2dpbk1hZ2ljTGluaxIUCgV0b2tlbhgBIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use loginMagicLinkStatusDescriptor instead')
const LoginMagicLinkStatus$json = const {
  '1': 'LoginMagicLinkStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'error', '3': 2, '4': 1, '5': 8, '10': 'error'},
  ],
};

/// Descriptor for `LoginMagicLinkStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginMagicLinkStatusDescriptor = $convert.base64Decode('ChRMb2dpbk1hZ2ljTGlua1N0YXR1cxIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIUCgVlcnJvchgCIAEoCFIFZXJyb3I=');
@$core.Deprecated('Use userProfileDataDescriptor instead')
const UserProfileData$json = const {
  '1': 'UserProfileData',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UserProfileData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDataDescriptor = $convert.base64Decode('Cg9Vc2VyUHJvZmlsZURhdGESEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
