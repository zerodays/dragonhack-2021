///
//  Generated code. Do not modify.
//  source: home.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetHomeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHomeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'home'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcIds')
    ..hasRequiredFields = false
  ;

  GetHomeInfo._() : super();
  factory GetHomeInfo({
    $core.Iterable<$core.String> nfcIds,
  }) {
    final _result = create();
    if (nfcIds != null) {
      _result.nfcIds.addAll(nfcIds);
    }
    return _result;
  }
  factory GetHomeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHomeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHomeInfo clone() => GetHomeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHomeInfo copyWith(void Function(GetHomeInfo) updates) => super.copyWith((message) => updates(message as GetHomeInfo)) as GetHomeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHomeInfo create() => GetHomeInfo._();
  GetHomeInfo createEmptyInstance() => create();
  static $pb.PbList<GetHomeInfo> createRepeated() => $pb.PbList<GetHomeInfo>();
  @$core.pragma('dart2js:noInline')
  static GetHomeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHomeInfo>(create);
  static GetHomeInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get nfcIds => $_getList(0);
}

class HomeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HomeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'home'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nContainers', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foodG', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wasteSavedG', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'co2SavedG', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nRewards', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HomeInfo._() : super();
  factory HomeInfo({
    $core.int nContainers,
    $core.int foodG,
    $core.int wasteSavedG,
    $core.int co2SavedG,
    $core.int nRewards,
  }) {
    final _result = create();
    if (nContainers != null) {
      _result.nContainers = nContainers;
    }
    if (foodG != null) {
      _result.foodG = foodG;
    }
    if (wasteSavedG != null) {
      _result.wasteSavedG = wasteSavedG;
    }
    if (co2SavedG != null) {
      _result.co2SavedG = co2SavedG;
    }
    if (nRewards != null) {
      _result.nRewards = nRewards;
    }
    return _result;
  }
  factory HomeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HomeInfo clone() => HomeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HomeInfo copyWith(void Function(HomeInfo) updates) => super.copyWith((message) => updates(message as HomeInfo)) as HomeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomeInfo create() => HomeInfo._();
  HomeInfo createEmptyInstance() => create();
  static $pb.PbList<HomeInfo> createRepeated() => $pb.PbList<HomeInfo>();
  @$core.pragma('dart2js:noInline')
  static HomeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomeInfo>(create);
  static HomeInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nContainers => $_getIZ(0);
  @$pb.TagNumber(1)
  set nContainers($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNContainers() => $_has(0);
  @$pb.TagNumber(1)
  void clearNContainers() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get foodG => $_getIZ(1);
  @$pb.TagNumber(2)
  set foodG($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFoodG() => $_has(1);
  @$pb.TagNumber(2)
  void clearFoodG() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get wasteSavedG => $_getIZ(2);
  @$pb.TagNumber(3)
  set wasteSavedG($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWasteSavedG() => $_has(2);
  @$pb.TagNumber(3)
  void clearWasteSavedG() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get co2SavedG => $_getIZ(3);
  @$pb.TagNumber(4)
  set co2SavedG($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCo2SavedG() => $_has(3);
  @$pb.TagNumber(4)
  void clearCo2SavedG() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get nRewards => $_getIZ(4);
  @$pb.TagNumber(5)
  set nRewards($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNRewards() => $_has(4);
  @$pb.TagNumber(5)
  void clearNRewards() => clearField(5);
}

