///
//  Generated code. Do not modify.
//  source: scale.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ScaleUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScaleUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scale'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weightG', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  ScaleUpdate._() : super();
  factory ScaleUpdate({
    $core.String nfcId,
    $core.double weightG,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (weightG != null) {
      _result.weightG = weightG;
    }
    return _result;
  }
  factory ScaleUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScaleUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScaleUpdate clone() => ScaleUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScaleUpdate copyWith(void Function(ScaleUpdate) updates) => super.copyWith((message) => updates(message as ScaleUpdate)) as ScaleUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScaleUpdate create() => ScaleUpdate._();
  ScaleUpdate createEmptyInstance() => create();
  static $pb.PbList<ScaleUpdate> createRepeated() => $pb.PbList<ScaleUpdate>();
  @$core.pragma('dart2js:noInline')
  static ScaleUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScaleUpdate>(create);
  static ScaleUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get weightG => $_getN(1);
  @$pb.TagNumber(2)
  set weightG($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeightG() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeightG() => clearField(2);
}

class ScaleMeasurement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScaleMeasurement', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'scale'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weightG', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ScaleMeasurement._() : super();
  factory ScaleMeasurement({
    $core.String nfcId,
    $core.int weightG,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (weightG != null) {
      _result.weightG = weightG;
    }
    return _result;
  }
  factory ScaleMeasurement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScaleMeasurement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScaleMeasurement clone() => ScaleMeasurement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScaleMeasurement copyWith(void Function(ScaleMeasurement) updates) => super.copyWith((message) => updates(message as ScaleMeasurement)) as ScaleMeasurement; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScaleMeasurement create() => ScaleMeasurement._();
  ScaleMeasurement createEmptyInstance() => create();
  static $pb.PbList<ScaleMeasurement> createRepeated() => $pb.PbList<ScaleMeasurement>();
  @$core.pragma('dart2js:noInline')
  static ScaleMeasurement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScaleMeasurement>(create);
  static ScaleMeasurement _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get weightG => $_getIZ(1);
  @$pb.TagNumber(2)
  set weightG($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeightG() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeightG() => clearField(2);
}

