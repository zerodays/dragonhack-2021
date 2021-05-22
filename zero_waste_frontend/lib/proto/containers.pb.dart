///
//  Generated code. Do not modify.
//  source: containers.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class RContainers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RContainers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..m<$core.String, RContainer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containers', entryClassName: 'RContainers.ContainersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: RContainer.create, packageName: const $pb.PackageName('containers'))
    ..hasRequiredFields = false
  ;

  RContainers._() : super();
  factory RContainers({
    $core.Map<$core.String, RContainer> containers,
  }) {
    final _result = create();
    if (containers != null) {
      _result.containers.addAll(containers);
    }
    return _result;
  }
  factory RContainers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RContainers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RContainers clone() => RContainers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RContainers copyWith(void Function(RContainers) updates) => super.copyWith((message) => updates(message as RContainers)) as RContainers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RContainers create() => RContainers._();
  RContainers createEmptyInstance() => create();
  static $pb.PbList<RContainers> createRepeated() => $pb.PbList<RContainers>();
  @$core.pragma('dart2js:noInline')
  static RContainers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RContainers>(create);
  static RContainers _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, RContainer> get containers => $_getMap(0);
}

class ScanRContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScanRContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  ScanRContainer._() : super();
  factory ScanRContainer({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory ScanRContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanRContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanRContainer clone() => ScanRContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanRContainer copyWith(void Function(ScanRContainer) updates) => super.copyWith((message) => updates(message as ScanRContainer)) as ScanRContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScanRContainer create() => ScanRContainer._();
  ScanRContainer createEmptyInstance() => create();
  static $pb.PbList<ScanRContainer> createRepeated() => $pb.PbList<ScanRContainer>();
  @$core.pragma('dart2js:noInline')
  static ScanRContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanRContainer>(create);
  static ScanRContainer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class ScannedRContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScannedRContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateCreated', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ScannedRContainer._() : super();
  factory ScannedRContainer({
    $core.String nfcId,
    $fixnum.Int64 dateCreated,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    return _result;
  }
  factory ScannedRContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScannedRContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScannedRContainer clone() => ScannedRContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScannedRContainer copyWith(void Function(ScannedRContainer) updates) => super.copyWith((message) => updates(message as ScannedRContainer)) as ScannedRContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScannedRContainer create() => ScannedRContainer._();
  ScannedRContainer createEmptyInstance() => create();
  static $pb.PbList<ScannedRContainer> createRepeated() => $pb.PbList<ScannedRContainer>();
  @$core.pragma('dart2js:noInline')
  static ScannedRContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScannedRContainer>(create);
  static ScannedRContainer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get dateCreated => $_getI64(1);
  @$pb.TagNumber(2)
  set dateCreated($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateCreated() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateCreated() => clearField(2);
}

class LoadRContainerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadRContainerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadRContainerInfo._() : super();
  factory LoadRContainerInfo({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadRContainerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadRContainerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadRContainerInfo clone() => LoadRContainerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadRContainerInfo copyWith(void Function(LoadRContainerInfo) updates) => super.copyWith((message) => updates(message as LoadRContainerInfo)) as LoadRContainerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadRContainerInfo create() => LoadRContainerInfo._();
  LoadRContainerInfo createEmptyInstance() => create();
  static $pb.PbList<LoadRContainerInfo> createRepeated() => $pb.PbList<LoadRContainerInfo>();
  @$core.pragma('dart2js:noInline')
  static LoadRContainerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadRContainerInfo>(create);
  static LoadRContainerInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class RContainerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RContainerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originSeller')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originLocation')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foodG', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wasteSavedG', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'co2SavedG', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RContainerInfo._() : super();
  factory RContainerInfo({
    $core.String nfcId,
    $core.String originSeller,
    $core.String originLocation,
    $core.int foodG,
    $core.int wasteSavedG,
    $core.int co2SavedG,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (originSeller != null) {
      _result.originSeller = originSeller;
    }
    if (originLocation != null) {
      _result.originLocation = originLocation;
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
    return _result;
  }
  factory RContainerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RContainerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RContainerInfo clone() => RContainerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RContainerInfo copyWith(void Function(RContainerInfo) updates) => super.copyWith((message) => updates(message as RContainerInfo)) as RContainerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RContainerInfo create() => RContainerInfo._();
  RContainerInfo createEmptyInstance() => create();
  static $pb.PbList<RContainerInfo> createRepeated() => $pb.PbList<RContainerInfo>();
  @$core.pragma('dart2js:noInline')
  static RContainerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RContainerInfo>(create);
  static RContainerInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get originSeller => $_getSZ(1);
  @$pb.TagNumber(2)
  set originSeller($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginSeller() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginSeller() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originLocation => $_getSZ(2);
  @$pb.TagNumber(3)
  set originLocation($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOriginLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginLocation() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get foodG => $_getIZ(3);
  @$pb.TagNumber(4)
  set foodG($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFoodG() => $_has(3);
  @$pb.TagNumber(4)
  void clearFoodG() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get wasteSavedG => $_getIZ(4);
  @$pb.TagNumber(5)
  set wasteSavedG($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWasteSavedG() => $_has(4);
  @$pb.TagNumber(5)
  void clearWasteSavedG() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get co2SavedG => $_getIZ(5);
  @$pb.TagNumber(6)
  set co2SavedG($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCo2SavedG() => $_has(5);
  @$pb.TagNumber(6)
  void clearCo2SavedG() => clearField(6);
}

class LoadRContainerMass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadRContainerMass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadRContainerMass._() : super();
  factory LoadRContainerMass({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadRContainerMass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadRContainerMass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadRContainerMass clone() => LoadRContainerMass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadRContainerMass copyWith(void Function(LoadRContainerMass) updates) => super.copyWith((message) => updates(message as LoadRContainerMass)) as LoadRContainerMass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadRContainerMass create() => LoadRContainerMass._();
  LoadRContainerMass createEmptyInstance() => create();
  static $pb.PbList<LoadRContainerMass> createRepeated() => $pb.PbList<LoadRContainerMass>();
  @$core.pragma('dart2js:noInline')
  static LoadRContainerMass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadRContainerMass>(create);
  static LoadRContainerMass _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class RContainerMass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RContainerMass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..pc<TimePoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mass', $pb.PbFieldType.PM, subBuilder: TimePoint.create)
    ..hasRequiredFields = false
  ;

  RContainerMass._() : super();
  factory RContainerMass({
    $core.String nfcId,
    $core.Iterable<TimePoint> mass,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (mass != null) {
      _result.mass.addAll(mass);
    }
    return _result;
  }
  factory RContainerMass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RContainerMass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RContainerMass clone() => RContainerMass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RContainerMass copyWith(void Function(RContainerMass) updates) => super.copyWith((message) => updates(message as RContainerMass)) as RContainerMass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RContainerMass create() => RContainerMass._();
  RContainerMass createEmptyInstance() => create();
  static $pb.PbList<RContainerMass> createRepeated() => $pb.PbList<RContainerMass>();
  @$core.pragma('dart2js:noInline')
  static RContainerMass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RContainerMass>(create);
  static RContainerMass _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TimePoint> get mass => $_getList(1);
}

class LoadRContainerImpact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadRContainerImpact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadRContainerImpact._() : super();
  factory LoadRContainerImpact({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadRContainerImpact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadRContainerImpact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadRContainerImpact clone() => LoadRContainerImpact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadRContainerImpact copyWith(void Function(LoadRContainerImpact) updates) => super.copyWith((message) => updates(message as LoadRContainerImpact)) as LoadRContainerImpact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadRContainerImpact create() => LoadRContainerImpact._();
  LoadRContainerImpact createEmptyInstance() => create();
  static $pb.PbList<LoadRContainerImpact> createRepeated() => $pb.PbList<LoadRContainerImpact>();
  @$core.pragma('dart2js:noInline')
  static LoadRContainerImpact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadRContainerImpact>(create);
  static LoadRContainerImpact _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class RContainerImpact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RContainerImpact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..pc<TimePoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waste', $pb.PbFieldType.PM, subBuilder: TimePoint.create)
    ..pc<TimePoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'co2', $pb.PbFieldType.PM, subBuilder: TimePoint.create)
    ..hasRequiredFields = false
  ;

  RContainerImpact._() : super();
  factory RContainerImpact({
    $core.String nfcId,
    $core.Iterable<TimePoint> waste,
    $core.Iterable<TimePoint> co2,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (waste != null) {
      _result.waste.addAll(waste);
    }
    if (co2 != null) {
      _result.co2.addAll(co2);
    }
    return _result;
  }
  factory RContainerImpact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RContainerImpact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RContainerImpact clone() => RContainerImpact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RContainerImpact copyWith(void Function(RContainerImpact) updates) => super.copyWith((message) => updates(message as RContainerImpact)) as RContainerImpact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RContainerImpact create() => RContainerImpact._();
  RContainerImpact createEmptyInstance() => create();
  static $pb.PbList<RContainerImpact> createRepeated() => $pb.PbList<RContainerImpact>();
  @$core.pragma('dart2js:noInline')
  static RContainerImpact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RContainerImpact>(create);
  static RContainerImpact _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TimePoint> get waste => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<TimePoint> get co2 => $_getList(2);
}

class LoadRContainerPurchases extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadRContainerPurchases', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadRContainerPurchases._() : super();
  factory LoadRContainerPurchases({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadRContainerPurchases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadRContainerPurchases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadRContainerPurchases clone() => LoadRContainerPurchases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadRContainerPurchases copyWith(void Function(LoadRContainerPurchases) updates) => super.copyWith((message) => updates(message as LoadRContainerPurchases)) as LoadRContainerPurchases; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadRContainerPurchases create() => LoadRContainerPurchases._();
  LoadRContainerPurchases createEmptyInstance() => create();
  static $pb.PbList<LoadRContainerPurchases> createRepeated() => $pb.PbList<LoadRContainerPurchases>();
  @$core.pragma('dart2js:noInline')
  static LoadRContainerPurchases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadRContainerPurchases>(create);
  static LoadRContainerPurchases _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class RContainerPurchases extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RContainerPurchases', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..pc<Purchase>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purchases', $pb.PbFieldType.PM, subBuilder: Purchase.create)
    ..hasRequiredFields = false
  ;

  RContainerPurchases._() : super();
  factory RContainerPurchases({
    $core.String nfcId,
    $core.Iterable<Purchase> purchases,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (purchases != null) {
      _result.purchases.addAll(purchases);
    }
    return _result;
  }
  factory RContainerPurchases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RContainerPurchases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RContainerPurchases clone() => RContainerPurchases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RContainerPurchases copyWith(void Function(RContainerPurchases) updates) => super.copyWith((message) => updates(message as RContainerPurchases)) as RContainerPurchases; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RContainerPurchases create() => RContainerPurchases._();
  RContainerPurchases createEmptyInstance() => create();
  static $pb.PbList<RContainerPurchases> createRepeated() => $pb.PbList<RContainerPurchases>();
  @$core.pragma('dart2js:noInline')
  static RContainerPurchases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RContainerPurchases>(create);
  static RContainerPurchases _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Purchase> get purchases => $_getList(1);
}

class RContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateCreated', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  RContainer._() : super();
  factory RContainer({
    $core.String nfcId,
    $core.String name,
    $fixnum.Int64 dateCreated,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    return _result;
  }
  factory RContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RContainer clone() => RContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RContainer copyWith(void Function(RContainer) updates) => super.copyWith((message) => updates(message as RContainer)) as RContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RContainer create() => RContainer._();
  RContainer createEmptyInstance() => create();
  static $pb.PbList<RContainer> createRepeated() => $pb.PbList<RContainer>();
  @$core.pragma('dart2js:noInline')
  static RContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RContainer>(create);
  static RContainer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get dateCreated => $_getI64(2);
  @$pb.TagNumber(3)
  set dateCreated($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDateCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearDateCreated() => clearField(3);
}

class TimePoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimePoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  TimePoint._() : super();
  factory TimePoint({
    $fixnum.Int64 time,
    $core.double value,
  }) {
    final _result = create();
    if (time != null) {
      _result.time = time;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory TimePoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimePoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimePoint clone() => TimePoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimePoint copyWith(void Function(TimePoint) updates) => super.copyWith((message) => updates(message as TimePoint)) as TimePoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimePoint create() => TimePoint._();
  TimePoint createEmptyInstance() => create();
  static $pb.PbList<TimePoint> createRepeated() => $pb.PbList<TimePoint>();
  @$core.pragma('dart2js:noInline')
  static TimePoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimePoint>(create);
  static TimePoint _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class Purchase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Purchase', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Purchase._() : super();
  factory Purchase({
    $fixnum.Int64 date,
    $core.String item,
    $core.double price,
  }) {
    final _result = create();
    if (date != null) {
      _result.date = date;
    }
    if (item != null) {
      _result.item = item;
    }
    if (price != null) {
      _result.price = price;
    }
    return _result;
  }
  factory Purchase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Purchase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Purchase clone() => Purchase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Purchase copyWith(void Function(Purchase) updates) => super.copyWith((message) => updates(message as Purchase)) as Purchase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Purchase create() => Purchase._();
  Purchase createEmptyInstance() => create();
  static $pb.PbList<Purchase> createRepeated() => $pb.PbList<Purchase>();
  @$core.pragma('dart2js:noInline')
  static Purchase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Purchase>(create);
  static Purchase _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get date => $_getI64(0);
  @$pb.TagNumber(1)
  set date($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get item => $_getSZ(1);
  @$pb.TagNumber(2)
  set item($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);
}

