///
//  Generated code. Do not modify.
//  source: containers.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class WasteContainers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WasteContainers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..m<$core.String, WasteContainer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'containers', entryClassName: 'WasteContainers.ContainersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: WasteContainer.create, packageName: const $pb.PackageName('containers'))
    ..hasRequiredFields = false
  ;

  WasteContainers._() : super();
  factory WasteContainers({
    $core.Map<$core.String, WasteContainer> containers,
  }) {
    final _result = create();
    if (containers != null) {
      _result.containers.addAll(containers);
    }
    return _result;
  }
  factory WasteContainers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WasteContainers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WasteContainers clone() => WasteContainers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WasteContainers copyWith(void Function(WasteContainers) updates) => super.copyWith((message) => updates(message as WasteContainers)) as WasteContainers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WasteContainers create() => WasteContainers._();
  WasteContainers createEmptyInstance() => create();
  static $pb.PbList<WasteContainers> createRepeated() => $pb.PbList<WasteContainers>();
  @$core.pragma('dart2js:noInline')
  static WasteContainers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WasteContainers>(create);
  static WasteContainers _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, WasteContainer> get containers => $_getMap(0);
}

class ScanWasteContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScanWasteContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  ScanWasteContainer._() : super();
  factory ScanWasteContainer({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory ScanWasteContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanWasteContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanWasteContainer clone() => ScanWasteContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanWasteContainer copyWith(void Function(ScanWasteContainer) updates) => super.copyWith((message) => updates(message as ScanWasteContainer)) as ScanWasteContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScanWasteContainer create() => ScanWasteContainer._();
  ScanWasteContainer createEmptyInstance() => create();
  static $pb.PbList<ScanWasteContainer> createRepeated() => $pb.PbList<ScanWasteContainer>();
  @$core.pragma('dart2js:noInline')
  static ScanWasteContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanWasteContainer>(create);
  static ScanWasteContainer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class ScannedWasteContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScannedWasteContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateCreated', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ScannedWasteContainer._() : super();
  factory ScannedWasteContainer({
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
  factory ScannedWasteContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScannedWasteContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScannedWasteContainer clone() => ScannedWasteContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScannedWasteContainer copyWith(void Function(ScannedWasteContainer) updates) => super.copyWith((message) => updates(message as ScannedWasteContainer)) as ScannedWasteContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScannedWasteContainer create() => ScannedWasteContainer._();
  ScannedWasteContainer createEmptyInstance() => create();
  static $pb.PbList<ScannedWasteContainer> createRepeated() => $pb.PbList<ScannedWasteContainer>();
  @$core.pragma('dart2js:noInline')
  static ScannedWasteContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScannedWasteContainer>(create);
  static ScannedWasteContainer _defaultInstance;

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

class LoadContainerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadContainerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadContainerInfo._() : super();
  factory LoadContainerInfo({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadContainerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadContainerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadContainerInfo clone() => LoadContainerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadContainerInfo copyWith(void Function(LoadContainerInfo) updates) => super.copyWith((message) => updates(message as LoadContainerInfo)) as LoadContainerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadContainerInfo create() => LoadContainerInfo._();
  LoadContainerInfo createEmptyInstance() => create();
  static $pb.PbList<LoadContainerInfo> createRepeated() => $pb.PbList<LoadContainerInfo>();
  @$core.pragma('dart2js:noInline')
  static LoadContainerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadContainerInfo>(create);
  static LoadContainerInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class ContainerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContainerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originSeller')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originLocation')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foodG', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wasteSavedG', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'co2SavedG', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ContainerInfo._() : super();
  factory ContainerInfo({
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
  factory ContainerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerInfo clone() => ContainerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerInfo copyWith(void Function(ContainerInfo) updates) => super.copyWith((message) => updates(message as ContainerInfo)) as ContainerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContainerInfo create() => ContainerInfo._();
  ContainerInfo createEmptyInstance() => create();
  static $pb.PbList<ContainerInfo> createRepeated() => $pb.PbList<ContainerInfo>();
  @$core.pragma('dart2js:noInline')
  static ContainerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerInfo>(create);
  static ContainerInfo _defaultInstance;

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

class LoadContainerMass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadContainerMass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadContainerMass._() : super();
  factory LoadContainerMass({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadContainerMass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadContainerMass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadContainerMass clone() => LoadContainerMass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadContainerMass copyWith(void Function(LoadContainerMass) updates) => super.copyWith((message) => updates(message as LoadContainerMass)) as LoadContainerMass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadContainerMass create() => LoadContainerMass._();
  LoadContainerMass createEmptyInstance() => create();
  static $pb.PbList<LoadContainerMass> createRepeated() => $pb.PbList<LoadContainerMass>();
  @$core.pragma('dart2js:noInline')
  static LoadContainerMass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadContainerMass>(create);
  static LoadContainerMass _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class ContainerMass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContainerMass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..pc<TimePoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mass', $pb.PbFieldType.PM, subBuilder: TimePoint.create)
    ..hasRequiredFields = false
  ;

  ContainerMass._() : super();
  factory ContainerMass({
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
  factory ContainerMass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerMass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerMass clone() => ContainerMass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerMass copyWith(void Function(ContainerMass) updates) => super.copyWith((message) => updates(message as ContainerMass)) as ContainerMass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContainerMass create() => ContainerMass._();
  ContainerMass createEmptyInstance() => create();
  static $pb.PbList<ContainerMass> createRepeated() => $pb.PbList<ContainerMass>();
  @$core.pragma('dart2js:noInline')
  static ContainerMass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerMass>(create);
  static ContainerMass _defaultInstance;

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

class LoadContainerImpact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadContainerImpact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadContainerImpact._() : super();
  factory LoadContainerImpact({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadContainerImpact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadContainerImpact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadContainerImpact clone() => LoadContainerImpact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadContainerImpact copyWith(void Function(LoadContainerImpact) updates) => super.copyWith((message) => updates(message as LoadContainerImpact)) as LoadContainerImpact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadContainerImpact create() => LoadContainerImpact._();
  LoadContainerImpact createEmptyInstance() => create();
  static $pb.PbList<LoadContainerImpact> createRepeated() => $pb.PbList<LoadContainerImpact>();
  @$core.pragma('dart2js:noInline')
  static LoadContainerImpact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadContainerImpact>(create);
  static LoadContainerImpact _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class ContainerImpact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContainerImpact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..pc<TimePoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waste', $pb.PbFieldType.PM, subBuilder: TimePoint.create)
    ..pc<TimePoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'co2', $pb.PbFieldType.PM, subBuilder: TimePoint.create)
    ..hasRequiredFields = false
  ;

  ContainerImpact._() : super();
  factory ContainerImpact({
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
  factory ContainerImpact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerImpact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerImpact clone() => ContainerImpact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerImpact copyWith(void Function(ContainerImpact) updates) => super.copyWith((message) => updates(message as ContainerImpact)) as ContainerImpact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContainerImpact create() => ContainerImpact._();
  ContainerImpact createEmptyInstance() => create();
  static $pb.PbList<ContainerImpact> createRepeated() => $pb.PbList<ContainerImpact>();
  @$core.pragma('dart2js:noInline')
  static ContainerImpact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerImpact>(create);
  static ContainerImpact _defaultInstance;

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

class LoadContainerPurchases extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadContainerPurchases', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..hasRequiredFields = false
  ;

  LoadContainerPurchases._() : super();
  factory LoadContainerPurchases({
    $core.String nfcId,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    return _result;
  }
  factory LoadContainerPurchases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadContainerPurchases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadContainerPurchases clone() => LoadContainerPurchases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadContainerPurchases copyWith(void Function(LoadContainerPurchases) updates) => super.copyWith((message) => updates(message as LoadContainerPurchases)) as LoadContainerPurchases; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadContainerPurchases create() => LoadContainerPurchases._();
  LoadContainerPurchases createEmptyInstance() => create();
  static $pb.PbList<LoadContainerPurchases> createRepeated() => $pb.PbList<LoadContainerPurchases>();
  @$core.pragma('dart2js:noInline')
  static LoadContainerPurchases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadContainerPurchases>(create);
  static LoadContainerPurchases _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);
}

class ContainerPurchases extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContainerPurchases', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..pc<Purchase>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purchases', $pb.PbFieldType.PM, subBuilder: Purchase.create)
    ..hasRequiredFields = false
  ;

  ContainerPurchases._() : super();
  factory ContainerPurchases({
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
  factory ContainerPurchases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerPurchases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerPurchases clone() => ContainerPurchases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerPurchases copyWith(void Function(ContainerPurchases) updates) => super.copyWith((message) => updates(message as ContainerPurchases)) as ContainerPurchases; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContainerPurchases create() => ContainerPurchases._();
  ContainerPurchases createEmptyInstance() => create();
  static $pb.PbList<ContainerPurchases> createRepeated() => $pb.PbList<ContainerPurchases>();
  @$core.pragma('dart2js:noInline')
  static ContainerPurchases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerPurchases>(create);
  static ContainerPurchases _defaultInstance;

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

class WasteContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WasteContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'containers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateCreated', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  WasteContainer._() : super();
  factory WasteContainer({
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
  factory WasteContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WasteContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WasteContainer clone() => WasteContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WasteContainer copyWith(void Function(WasteContainer) updates) => super.copyWith((message) => updates(message as WasteContainer)) as WasteContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WasteContainer create() => WasteContainer._();
  WasteContainer createEmptyInstance() => create();
  static $pb.PbList<WasteContainer> createRepeated() => $pb.PbList<WasteContainer>();
  @$core.pragma('dart2js:noInline')
  static WasteContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WasteContainer>(create);
  static WasteContainer _defaultInstance;

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

