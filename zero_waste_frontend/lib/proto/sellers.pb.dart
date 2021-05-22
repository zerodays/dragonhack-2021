///
//  Generated code. Do not modify.
//  source: sellers.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NewPurchase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewPurchase', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sellers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nfcId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'productId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weightG', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  NewPurchase._() : super();
  factory NewPurchase({
    $core.String nfcId,
    $core.String productId,
    $core.int weightG,
  }) {
    final _result = create();
    if (nfcId != null) {
      _result.nfcId = nfcId;
    }
    if (productId != null) {
      _result.productId = productId;
    }
    if (weightG != null) {
      _result.weightG = weightG;
    }
    return _result;
  }
  factory NewPurchase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPurchase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPurchase clone() => NewPurchase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPurchase copyWith(void Function(NewPurchase) updates) => super.copyWith((message) => updates(message as NewPurchase)) as NewPurchase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewPurchase create() => NewPurchase._();
  NewPurchase createEmptyInstance() => create();
  static $pb.PbList<NewPurchase> createRepeated() => $pb.PbList<NewPurchase>();
  @$core.pragma('dart2js:noInline')
  static NewPurchase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPurchase>(create);
  static NewPurchase _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nfcId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nfcId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNfcId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNfcId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get productId => $_getSZ(1);
  @$pb.TagNumber(2)
  set productId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get weightG => $_getIZ(2);
  @$pb.TagNumber(3)
  set weightG($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeightG() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeightG() => clearField(3);
}

