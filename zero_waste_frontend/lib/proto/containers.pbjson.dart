///
//  Generated code. Do not modify.
//  source: containers.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rContainersDescriptor instead')
const RContainers$json = const {
  '1': 'RContainers',
  '2': const [
    const {'1': 'containers', '3': 1, '4': 3, '5': 11, '6': '.containers.RContainers.ContainersEntry', '10': 'containers'},
  ],
  '3': const [RContainers_ContainersEntry$json],
};

@$core.Deprecated('Use rContainersDescriptor instead')
const RContainers_ContainersEntry$json = const {
  '1': 'ContainersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.containers.RContainer', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `RContainers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rContainersDescriptor = $convert.base64Decode('CgtSQ29udGFpbmVycxJHCgpjb250YWluZXJzGAEgAygLMicuY29udGFpbmVycy5SQ29udGFpbmVycy5Db250YWluZXJzRW50cnlSCmNvbnRhaW5lcnMaVQoPQ29udGFpbmVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiwKBXZhbHVlGAIgASgLMhYuY29udGFpbmVycy5SQ29udGFpbmVyUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use scanRContainerDescriptor instead')
const ScanRContainer$json = const {
  '1': 'ScanRContainer',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `ScanRContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanRContainerDescriptor = $convert.base64Decode('Cg5TY2FuUkNvbnRhaW5lchIVCgZuZmNfaWQYASABKAlSBW5mY0lk');
@$core.Deprecated('Use scannedRContainerDescriptor instead')
const ScannedRContainer$json = const {
  '1': 'ScannedRContainer',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'date_created', '3': 2, '4': 1, '5': 4, '10': 'dateCreated'},
  ],
};

/// Descriptor for `ScannedRContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scannedRContainerDescriptor = $convert.base64Decode('ChFTY2FubmVkUkNvbnRhaW5lchIVCgZuZmNfaWQYASABKAlSBW5mY0lkEiEKDGRhdGVfY3JlYXRlZBgCIAEoBFILZGF0ZUNyZWF0ZWQ=');
@$core.Deprecated('Use loadRContainerInfoDescriptor instead')
const LoadRContainerInfo$json = const {
  '1': 'LoadRContainerInfo',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `LoadRContainerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadRContainerInfoDescriptor = $convert.base64Decode('ChJMb2FkUkNvbnRhaW5lckluZm8SFQoGbmZjX2lkGAEgASgJUgVuZmNJZA==');
@$core.Deprecated('Use rContainerInfoDescriptor instead')
const RContainerInfo$json = const {
  '1': 'RContainerInfo',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'origin_seller', '3': 2, '4': 1, '5': 9, '10': 'originSeller'},
    const {'1': 'origin_location', '3': 3, '4': 1, '5': 9, '10': 'originLocation'},
    const {'1': 'food_g', '3': 4, '4': 1, '5': 5, '10': 'foodG'},
    const {'1': 'waste_saved_g', '3': 5, '4': 1, '5': 5, '10': 'wasteSavedG'},
    const {'1': 'co2_saved_g', '3': 6, '4': 1, '5': 5, '10': 'co2SavedG'},
    const {'1': 'mass', '3': 7, '4': 3, '5': 11, '6': '.containers.TimePoint', '10': 'mass'},
    const {'1': 'co2', '3': 8, '4': 3, '5': 11, '6': '.containers.TimePoint', '10': 'co2'},
    const {'1': 'waste', '3': 9, '4': 3, '5': 11, '6': '.containers.TimePoint', '10': 'waste'},
    const {'1': 'purchases', '3': 10, '4': 3, '5': 11, '6': '.containers.Purchase', '10': 'purchases'},
  ],
};

/// Descriptor for `RContainerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rContainerInfoDescriptor = $convert.base64Decode('Cg5SQ29udGFpbmVySW5mbxIVCgZuZmNfaWQYASABKAlSBW5mY0lkEiMKDW9yaWdpbl9zZWxsZXIYAiABKAlSDG9yaWdpblNlbGxlchInCg9vcmlnaW5fbG9jYXRpb24YAyABKAlSDm9yaWdpbkxvY2F0aW9uEhUKBmZvb2RfZxgEIAEoBVIFZm9vZEcSIgoNd2FzdGVfc2F2ZWRfZxgFIAEoBVILd2FzdGVTYXZlZEcSHgoLY28yX3NhdmVkX2cYBiABKAVSCWNvMlNhdmVkRxIpCgRtYXNzGAcgAygLMhUuY29udGFpbmVycy5UaW1lUG9pbnRSBG1hc3MSJwoDY28yGAggAygLMhUuY29udGFpbmVycy5UaW1lUG9pbnRSA2NvMhIrCgV3YXN0ZRgJIAMoCzIVLmNvbnRhaW5lcnMuVGltZVBvaW50UgV3YXN0ZRIyCglwdXJjaGFzZXMYCiADKAsyFC5jb250YWluZXJzLlB1cmNoYXNlUglwdXJjaGFzZXM=');
@$core.Deprecated('Use rContainerDescriptor instead')
const RContainer$json = const {
  '1': 'RContainer',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'date_created', '3': 3, '4': 1, '5': 4, '10': 'dateCreated'},
  ],
};

/// Descriptor for `RContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rContainerDescriptor = $convert.base64Decode('CgpSQ29udGFpbmVyEhUKBm5mY19pZBgBIAEoCVIFbmZjSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIhCgxkYXRlX2NyZWF0ZWQYAyABKARSC2RhdGVDcmVhdGVk');
@$core.Deprecated('Use timePointDescriptor instead')
const TimePoint$json = const {
  '1': 'TimePoint',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 4, '10': 'time'},
    const {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `TimePoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timePointDescriptor = $convert.base64Decode('CglUaW1lUG9pbnQSEgoEdGltZRgBIAEoBFIEdGltZRIUCgV2YWx1ZRgCIAEoAlIFdmFsdWU=');
@$core.Deprecated('Use purchaseDescriptor instead')
const Purchase$json = const {
  '1': 'Purchase',
  '2': const [
    const {'1': 'date', '3': 1, '4': 1, '5': 4, '10': 'date'},
    const {'1': 'item', '3': 2, '4': 1, '5': 9, '10': 'item'},
    const {'1': 'weight_g', '3': 3, '4': 1, '5': 5, '10': 'weightG'},
  ],
};

/// Descriptor for `Purchase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List purchaseDescriptor = $convert.base64Decode('CghQdXJjaGFzZRISCgRkYXRlGAEgASgEUgRkYXRlEhIKBGl0ZW0YAiABKAlSBGl0ZW0SGQoId2VpZ2h0X2cYAyABKAVSB3dlaWdodEc=');
