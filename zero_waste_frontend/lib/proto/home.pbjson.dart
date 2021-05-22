///
//  Generated code. Do not modify.
//  source: home.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getHomeInfoDescriptor instead')
const GetHomeInfo$json = const {
  '1': 'GetHomeInfo',
  '2': const [
    const {'1': 'nfc_ids', '3': 1, '4': 3, '5': 9, '10': 'nfcIds'},
  ],
};

/// Descriptor for `GetHomeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHomeInfoDescriptor = $convert.base64Decode('CgtHZXRIb21lSW5mbxIXCgduZmNfaWRzGAEgAygJUgZuZmNJZHM=');
@$core.Deprecated('Use homeInfoDescriptor instead')
const HomeInfo$json = const {
  '1': 'HomeInfo',
  '2': const [
    const {'1': 'n_containers', '3': 1, '4': 1, '5': 5, '10': 'nContainers'},
    const {'1': 'food_g', '3': 2, '4': 1, '5': 5, '10': 'foodG'},
    const {'1': 'waste_saved_g', '3': 3, '4': 1, '5': 5, '10': 'wasteSavedG'},
    const {'1': 'co2_saved_g', '3': 4, '4': 1, '5': 5, '10': 'co2SavedG'},
    const {'1': 'n_rewards', '3': 5, '4': 1, '5': 5, '10': 'nRewards'},
  ],
};

/// Descriptor for `HomeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homeInfoDescriptor = $convert.base64Decode('CghIb21lSW5mbxIhCgxuX2NvbnRhaW5lcnMYASABKAVSC25Db250YWluZXJzEhUKBmZvb2RfZxgCIAEoBVIFZm9vZEcSIgoNd2FzdGVfc2F2ZWRfZxgDIAEoBVILd2FzdGVTYXZlZEcSHgoLY28yX3NhdmVkX2cYBCABKAVSCWNvMlNhdmVkRxIbCgluX3Jld2FyZHMYBSABKAVSCG5SZXdhcmRz');
