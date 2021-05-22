///
//  Generated code. Do not modify.
//  source: containers.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use wasteContainersDescriptor instead')
const WasteContainers$json = const {
  '1': 'WasteContainers',
  '2': const [
    const {'1': 'containers', '3': 1, '4': 3, '5': 11, '6': '.containers.WasteContainers.ContainersEntry', '10': 'containers'},
  ],
  '3': const [WasteContainers_ContainersEntry$json],
};

@$core.Deprecated('Use wasteContainersDescriptor instead')
const WasteContainers_ContainersEntry$json = const {
  '1': 'ContainersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.containers.WasteContainer', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `WasteContainers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wasteContainersDescriptor = $convert.base64Decode('Cg9XYXN0ZUNvbnRhaW5lcnMSSwoKY29udGFpbmVycxgBIAMoCzIrLmNvbnRhaW5lcnMuV2FzdGVDb250YWluZXJzLkNvbnRhaW5lcnNFbnRyeVIKY29udGFpbmVycxpZCg9Db250YWluZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMAoFdmFsdWUYAiABKAsyGi5jb250YWluZXJzLldhc3RlQ29udGFpbmVyUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use scanWasteContainerDescriptor instead')
const ScanWasteContainer$json = const {
  '1': 'ScanWasteContainer',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `ScanWasteContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanWasteContainerDescriptor = $convert.base64Decode('ChJTY2FuV2FzdGVDb250YWluZXISFQoGbmZjX2lkGAEgASgJUgVuZmNJZA==');
@$core.Deprecated('Use scannedWasteContainerDescriptor instead')
const ScannedWasteContainer$json = const {
  '1': 'ScannedWasteContainer',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'date_created', '3': 2, '4': 1, '5': 4, '10': 'dateCreated'},
  ],
};

/// Descriptor for `ScannedWasteContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scannedWasteContainerDescriptor = $convert.base64Decode('ChVTY2FubmVkV2FzdGVDb250YWluZXISFQoGbmZjX2lkGAEgASgJUgVuZmNJZBIhCgxkYXRlX2NyZWF0ZWQYAiABKARSC2RhdGVDcmVhdGVk');
@$core.Deprecated('Use loadContainerInfoDescriptor instead')
const LoadContainerInfo$json = const {
  '1': 'LoadContainerInfo',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `LoadContainerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadContainerInfoDescriptor = $convert.base64Decode('ChFMb2FkQ29udGFpbmVySW5mbxIVCgZuZmNfaWQYASABKAlSBW5mY0lk');
@$core.Deprecated('Use containerInfoDescriptor instead')
const ContainerInfo$json = const {
  '1': 'ContainerInfo',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'origin_company', '3': 2, '4': 1, '5': 9, '10': 'originCompany'},
    const {'1': 'origin_location', '3': 3, '4': 1, '5': 9, '10': 'originLocation'},
    const {'1': 'food_g', '3': 4, '4': 1, '5': 5, '10': 'foodG'},
    const {'1': 'waste_saved_g', '3': 5, '4': 1, '5': 5, '10': 'wasteSavedG'},
    const {'1': 'co2_saved_g', '3': 6, '4': 1, '5': 5, '10': 'co2SavedG'},
  ],
};

/// Descriptor for `ContainerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerInfoDescriptor = $convert.base64Decode('Cg1Db250YWluZXJJbmZvEhUKBm5mY19pZBgBIAEoCVIFbmZjSWQSJQoOb3JpZ2luX2NvbXBhbnkYAiABKAlSDW9yaWdpbkNvbXBhbnkSJwoPb3JpZ2luX2xvY2F0aW9uGAMgASgJUg5vcmlnaW5Mb2NhdGlvbhIVCgZmb29kX2cYBCABKAVSBWZvb2RHEiIKDXdhc3RlX3NhdmVkX2cYBSABKAVSC3dhc3RlU2F2ZWRHEh4KC2NvMl9zYXZlZF9nGAYgASgFUgljbzJTYXZlZEc=');
@$core.Deprecated('Use loadContainerMassDescriptor instead')
const LoadContainerMass$json = const {
  '1': 'LoadContainerMass',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `LoadContainerMass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadContainerMassDescriptor = $convert.base64Decode('ChFMb2FkQ29udGFpbmVyTWFzcxIVCgZuZmNfaWQYASABKAlSBW5mY0lk');
@$core.Deprecated('Use containerMassDescriptor instead')
const ContainerMass$json = const {
  '1': 'ContainerMass',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'mass', '3': 2, '4': 3, '5': 11, '6': '.containers.TimePoint', '10': 'mass'},
  ],
};

/// Descriptor for `ContainerMass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerMassDescriptor = $convert.base64Decode('Cg1Db250YWluZXJNYXNzEhUKBm5mY19pZBgBIAEoCVIFbmZjSWQSKQoEbWFzcxgCIAMoCzIVLmNvbnRhaW5lcnMuVGltZVBvaW50UgRtYXNz');
@$core.Deprecated('Use loadContainerImpactDescriptor instead')
const LoadContainerImpact$json = const {
  '1': 'LoadContainerImpact',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `LoadContainerImpact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadContainerImpactDescriptor = $convert.base64Decode('ChNMb2FkQ29udGFpbmVySW1wYWN0EhUKBm5mY19pZBgBIAEoCVIFbmZjSWQ=');
@$core.Deprecated('Use containerImpactDescriptor instead')
const ContainerImpact$json = const {
  '1': 'ContainerImpact',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'waste', '3': 2, '4': 3, '5': 11, '6': '.containers.TimePoint', '10': 'waste'},
    const {'1': 'co2', '3': 3, '4': 3, '5': 11, '6': '.containers.TimePoint', '10': 'co2'},
  ],
};

/// Descriptor for `ContainerImpact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerImpactDescriptor = $convert.base64Decode('Cg9Db250YWluZXJJbXBhY3QSFQoGbmZjX2lkGAEgASgJUgVuZmNJZBIrCgV3YXN0ZRgCIAMoCzIVLmNvbnRhaW5lcnMuVGltZVBvaW50UgV3YXN0ZRInCgNjbzIYAyADKAsyFS5jb250YWluZXJzLlRpbWVQb2ludFIDY28y');
@$core.Deprecated('Use loadContainerPurchasesDescriptor instead')
const LoadContainerPurchases$json = const {
  '1': 'LoadContainerPurchases',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
  ],
};

/// Descriptor for `LoadContainerPurchases`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadContainerPurchasesDescriptor = $convert.base64Decode('ChZMb2FkQ29udGFpbmVyUHVyY2hhc2VzEhUKBm5mY19pZBgBIAEoCVIFbmZjSWQ=');
@$core.Deprecated('Use containerPurchasesDescriptor instead')
const ContainerPurchases$json = const {
  '1': 'ContainerPurchases',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'purchases', '3': 2, '4': 3, '5': 11, '6': '.containers.Purchase', '10': 'purchases'},
  ],
};

/// Descriptor for `ContainerPurchases`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerPurchasesDescriptor = $convert.base64Decode('ChJDb250YWluZXJQdXJjaGFzZXMSFQoGbmZjX2lkGAEgASgJUgVuZmNJZBIyCglwdXJjaGFzZXMYAiADKAsyFC5jb250YWluZXJzLlB1cmNoYXNlUglwdXJjaGFzZXM=');
@$core.Deprecated('Use wasteContainerDescriptor instead')
const WasteContainer$json = const {
  '1': 'WasteContainer',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'date_created', '3': 3, '4': 1, '5': 4, '10': 'dateCreated'},
  ],
};

/// Descriptor for `WasteContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wasteContainerDescriptor = $convert.base64Decode('Cg5XYXN0ZUNvbnRhaW5lchIVCgZuZmNfaWQYASABKAlSBW5mY0lkEhIKBG5hbWUYAiABKAlSBG5hbWUSIQoMZGF0ZV9jcmVhdGVkGAMgASgEUgtkYXRlQ3JlYXRlZA==');
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
    const {'1': 'price', '3': 3, '4': 1, '5': 2, '10': 'price'},
  ],
};

/// Descriptor for `Purchase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List purchaseDescriptor = $convert.base64Decode('CghQdXJjaGFzZRISCgRkYXRlGAEgASgEUgRkYXRlEhIKBGl0ZW0YAiABKAlSBGl0ZW0SFAoFcHJpY2UYAyABKAJSBXByaWNl');
