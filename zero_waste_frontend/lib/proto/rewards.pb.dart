///
//  Generated code. Do not modify.
//  source: rewards.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LoadRewards extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadRewards', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rewards'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcIds')
    ..hasRequiredFields = false
  ;

  LoadRewards._() : super();
  factory LoadRewards({
    $core.Iterable<$core.String> nfcIds,
  }) {
    final _result = create();
    if (nfcIds != null) {
      _result.nfcIds.addAll(nfcIds);
    }
    return _result;
  }
  factory LoadRewards.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadRewards.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadRewards clone() => LoadRewards()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadRewards copyWith(void Function(LoadRewards) updates) => super.copyWith((message) => updates(message as LoadRewards)) as LoadRewards; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadRewards create() => LoadRewards._();
  LoadRewards createEmptyInstance() => create();
  static $pb.PbList<LoadRewards> createRepeated() => $pb.PbList<LoadRewards>();
  @$core.pragma('dart2js:noInline')
  static LoadRewards getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadRewards>(create);
  static LoadRewards _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get nfcIds => $_getList(0);
}

class Rewards extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Rewards', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rewards'), createEmptyInstance: create)
    ..pc<Reward>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rewards', $pb.PbFieldType.PM, subBuilder: Reward.create)
    ..hasRequiredFields = false
  ;

  Rewards._() : super();
  factory Rewards({
    $core.Iterable<Reward> rewards,
  }) {
    final _result = create();
    if (rewards != null) {
      _result.rewards.addAll(rewards);
    }
    return _result;
  }
  factory Rewards.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rewards.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Rewards clone() => Rewards()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Rewards copyWith(void Function(Rewards) updates) => super.copyWith((message) => updates(message as Rewards)) as Rewards; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Rewards create() => Rewards._();
  Rewards createEmptyInstance() => create();
  static $pb.PbList<Rewards> createRepeated() => $pb.PbList<Rewards>();
  @$core.pragma('dart2js:noInline')
  static Rewards getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rewards>(create);
  static Rewards _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Reward> get rewards => $_getList(0);
}

class Reward extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reward', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rewards'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reward')
    ..hasRequiredFields = false
  ;

  Reward._() : super();
  factory Reward({
    $core.String reason,
    $core.String reward,
  }) {
    final _result = create();
    if (reason != null) {
      _result.reason = reason;
    }
    if (reward != null) {
      _result.reward = reward;
    }
    return _result;
  }
  factory Reward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reward clone() => Reward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reward copyWith(void Function(Reward) updates) => super.copyWith((message) => updates(message as Reward)) as Reward; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reward create() => Reward._();
  Reward createEmptyInstance() => create();
  static $pb.PbList<Reward> createRepeated() => $pb.PbList<Reward>();
  @$core.pragma('dart2js:noInline')
  static Reward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reward>(create);
  static Reward _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reason => $_getSZ(0);
  @$pb.TagNumber(1)
  set reason($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reward => $_getSZ(1);
  @$pb.TagNumber(2)
  set reward($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReward() => $_has(1);
  @$pb.TagNumber(2)
  void clearReward() => clearField(2);
}

