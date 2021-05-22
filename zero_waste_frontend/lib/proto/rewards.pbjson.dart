///
//  Generated code. Do not modify.
//  source: rewards.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loadRewardsDescriptor instead')
const LoadRewards$json = const {
  '1': 'LoadRewards',
  '2': const [
    const {'1': 'nfc_ids', '3': 1, '4': 3, '5': 9, '10': 'nfcIds'},
  ],
};

/// Descriptor for `LoadRewards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadRewardsDescriptor = $convert.base64Decode('CgtMb2FkUmV3YXJkcxIXCgduZmNfaWRzGAEgAygJUgZuZmNJZHM=');
@$core.Deprecated('Use rewardsDescriptor instead')
const Rewards$json = const {
  '1': 'Rewards',
  '2': const [
    const {'1': 'rewards', '3': 1, '4': 3, '5': 11, '6': '.rewards.Reward', '10': 'rewards'},
  ],
};

/// Descriptor for `Rewards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardsDescriptor = $convert.base64Decode('CgdSZXdhcmRzEikKB3Jld2FyZHMYASADKAsyDy5yZXdhcmRzLlJld2FyZFIHcmV3YXJkcw==');
@$core.Deprecated('Use rewardDescriptor instead')
const Reward$json = const {
  '1': 'Reward',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 1, '5': 9, '10': 'reason'},
    const {'1': 'reward', '3': 2, '4': 1, '5': 9, '10': 'reward'},
  ],
};

/// Descriptor for `Reward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardDescriptor = $convert.base64Decode('CgZSZXdhcmQSFgoGcmVhc29uGAEgASgJUgZyZWFzb24SFgoGcmV3YXJkGAIgASgJUgZyZXdhcmQ=');
