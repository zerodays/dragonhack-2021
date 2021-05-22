///
//  Generated code. Do not modify.
//  source: zero_waste.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetMagicLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMagicLink', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'zero_waste'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..hasRequiredFields = false
  ;

  GetMagicLink._() : super();
  factory GetMagicLink({
    $core.String mail,
  }) {
    final _result = create();
    if (mail != null) {
      _result.mail = mail;
    }
    return _result;
  }
  factory GetMagicLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMagicLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMagicLink clone() => GetMagicLink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMagicLink copyWith(void Function(GetMagicLink) updates) => super.copyWith((message) => updates(message as GetMagicLink)) as GetMagicLink; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMagicLink create() => GetMagicLink._();
  GetMagicLink createEmptyInstance() => create();
  static $pb.PbList<GetMagicLink> createRepeated() => $pb.PbList<GetMagicLink>();
  @$core.pragma('dart2js:noInline')
  static GetMagicLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMagicLink>(create);
  static GetMagicLink _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mail => $_getSZ(0);
  @$pb.TagNumber(1)
  set mail($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMail() => $_has(0);
  @$pb.TagNumber(1)
  void clearMail() => clearField(1);
}

class LoginMagicLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginMagicLink', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'zero_waste'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  LoginMagicLink._() : super();
  factory LoginMagicLink({
    $core.String token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory LoginMagicLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginMagicLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginMagicLink clone() => LoginMagicLink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginMagicLink copyWith(void Function(LoginMagicLink) updates) => super.copyWith((message) => updates(message as LoginMagicLink)) as LoginMagicLink; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginMagicLink create() => LoginMagicLink._();
  LoginMagicLink createEmptyInstance() => create();
  static $pb.PbList<LoginMagicLink> createRepeated() => $pb.PbList<LoginMagicLink>();
  @$core.pragma('dart2js:noInline')
  static LoginMagicLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginMagicLink>(create);
  static LoginMagicLink _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class LoginMagicLinkStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginMagicLinkStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'zero_waste'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  LoginMagicLinkStatus._() : super();
  factory LoginMagicLinkStatus({
    $core.String status,
    $core.bool error,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory LoginMagicLinkStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginMagicLinkStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginMagicLinkStatus clone() => LoginMagicLinkStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginMagicLinkStatus copyWith(void Function(LoginMagicLinkStatus) updates) => super.copyWith((message) => updates(message as LoginMagicLinkStatus)) as LoginMagicLinkStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginMagicLinkStatus create() => LoginMagicLinkStatus._();
  LoginMagicLinkStatus createEmptyInstance() => create();
  static $pb.PbList<LoginMagicLinkStatus> createRepeated() => $pb.PbList<LoginMagicLinkStatus>();
  @$core.pragma('dart2js:noInline')
  static LoginMagicLinkStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginMagicLinkStatus>(create);
  static LoginMagicLinkStatus _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get error => $_getBF(1);
  @$pb.TagNumber(2)
  set error($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class UserProfileData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserProfileData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'zero_waste'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  UserProfileData._() : super();
  factory UserProfileData({
    $core.String name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UserProfileData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProfileData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserProfileData clone() => UserProfileData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserProfileData copyWith(void Function(UserProfileData) updates) => super.copyWith((message) => updates(message as UserProfileData)) as UserProfileData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserProfileData create() => UserProfileData._();
  UserProfileData createEmptyInstance() => create();
  static $pb.PbList<UserProfileData> createRepeated() => $pb.PbList<UserProfileData>();
  @$core.pragma('dart2js:noInline')
  static UserProfileData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProfileData>(create);
  static UserProfileData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

