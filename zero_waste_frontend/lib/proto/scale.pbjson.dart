///
//  Generated code. Do not modify.
//  source: scale.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use scaleUpdateDescriptor instead')
const ScaleUpdate$json = const {
  '1': 'ScaleUpdate',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'weight_g', '3': 2, '4': 1, '5': 1, '10': 'weightG'},
  ],
};

/// Descriptor for `ScaleUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleUpdateDescriptor = $convert.base64Decode('CgtTY2FsZVVwZGF0ZRIVCgZuZmNfaWQYASABKAlSBW5mY0lkEhkKCHdlaWdodF9nGAIgASgBUgd3ZWlnaHRH');
@$core.Deprecated('Use scaleMeasurementDescriptor instead')
const ScaleMeasurement$json = const {
  '1': 'ScaleMeasurement',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'weight_g', '3': 2, '4': 1, '5': 5, '10': 'weightG'},
  ],
};

/// Descriptor for `ScaleMeasurement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleMeasurementDescriptor = $convert.base64Decode('ChBTY2FsZU1lYXN1cmVtZW50EhUKBm5mY19pZBgBIAEoCVIFbmZjSWQSGQoId2VpZ2h0X2cYAiABKAVSB3dlaWdodEc=');
