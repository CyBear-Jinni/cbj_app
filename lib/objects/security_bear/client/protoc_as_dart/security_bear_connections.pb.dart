///
//  Generated code. Do not modify.
//  source: security_bear_connections.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SecurityBearSetup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SecurityBearSetup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SecurityBearConnections'), createEmptyInstance: create)
    ..aOM<WiFiInformation>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wiFiFirstPriority', protoName: 'wiFiFirstPriority', subBuilder: WiFiInformation.create)
    ..aOM<WiFiInformation>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wiFiSecondPriority', protoName: 'wiFiSecondPriority', subBuilder: WiFiInformation.create)
    ..hasRequiredFields = false
  ;

  SecurityBearSetup._() : super();
  factory SecurityBearSetup() => create();
  factory SecurityBearSetup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SecurityBearSetup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SecurityBearSetup clone() => SecurityBearSetup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SecurityBearSetup copyWith(void Function(SecurityBearSetup) updates) => super.copyWith((message) => updates(message as SecurityBearSetup)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecurityBearSetup create() => SecurityBearSetup._();
  SecurityBearSetup createEmptyInstance() => create();
  static $pb.PbList<SecurityBearSetup> createRepeated() => $pb.PbList<SecurityBearSetup>();
  @$core.pragma('dart2js:noInline')
  static SecurityBearSetup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SecurityBearSetup>(create);
  static SecurityBearSetup _defaultInstance;

  @$pb.TagNumber(3)
  WiFiInformation get wiFiFirstPriority => $_getN(0);
  @$pb.TagNumber(3)
  set wiFiFirstPriority(WiFiInformation v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWiFiFirstPriority() => $_has(0);
  @$pb.TagNumber(3)
  void clearWiFiFirstPriority() => clearField(3);
  @$pb.TagNumber(3)
  WiFiInformation ensureWiFiFirstPriority() => $_ensure(0);

  @$pb.TagNumber(4)
  WiFiInformation get wiFiSecondPriority => $_getN(1);
  @$pb.TagNumber(4)
  set wiFiSecondPriority(WiFiInformation v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasWiFiSecondPriority() => $_has(1);
  @$pb.TagNumber(4)
  void clearWiFiSecondPriority() => clearField(4);
  @$pb.TagNumber(4)
  WiFiInformation ensureWiFiSecondPriority() => $_ensure(1);
}

class WiFiInformation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WiFiInformation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SecurityBearConnections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wiFiName', protoName: 'wiFiName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wiFiPassword', protoName: 'wiFiPassword')
    ..hasRequiredFields = false
  ;

  WiFiInformation._() : super();
  factory WiFiInformation() => create();
  factory WiFiInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WiFiInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WiFiInformation clone() => WiFiInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WiFiInformation copyWith(void Function(WiFiInformation) updates) => super.copyWith((message) => updates(message as WiFiInformation)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WiFiInformation create() => WiFiInformation._();
  WiFiInformation createEmptyInstance() => create();
  static $pb.PbList<WiFiInformation> createRepeated() => $pb.PbList<WiFiInformation>();
  @$core.pragma('dart2js:noInline')
  static WiFiInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WiFiInformation>(create);
  static WiFiInformation _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wiFiName => $_getSZ(0);
  @$pb.TagNumber(1)
  set wiFiName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWiFiName() => $_has(0);
  @$pb.TagNumber(1)
  void clearWiFiName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get wiFiPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set wiFiPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWiFiPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearWiFiPassword() => clearField(2);
}

class SBCommendStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SBCommendStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SecurityBearConnections'), createEmptyInstance: create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  SBCommendStatus._() : super();
  factory SBCommendStatus() => create();
  factory SBCommendStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SBCommendStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SBCommendStatus clone() => SBCommendStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SBCommendStatus copyWith(void Function(SBCommendStatus) updates) => super.copyWith((message) => updates(message as SBCommendStatus)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SBCommendStatus create() => SBCommendStatus._();
  SBCommendStatus createEmptyInstance() => create();
  static $pb.PbList<SBCommendStatus> createRepeated() => $pb.PbList<SBCommendStatus>();
  @$core.pragma('dart2js:noInline')
  static SBCommendStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SBCommendStatus>(create);
  static SBCommendStatus _defaultInstance;

  @$pb.TagNumber(5)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(5)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(5)
  void clearSuccess() => clearField(5);
}

class SBFirebaseAccountInformation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SBFirebaseAccountInformation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SecurityBearConnections'), createEmptyInstance: create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fireBaseProjectId', protoName: 'fireBaseProjectId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fireBaseApiKey', protoName: 'fireBaseApiKey')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userEmail', protoName: 'userEmail')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPassword', protoName: 'userPassword')
    ..hasRequiredFields = false
  ;

  SBFirebaseAccountInformation._() : super();
  factory SBFirebaseAccountInformation() => create();
  factory SBFirebaseAccountInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SBFirebaseAccountInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SBFirebaseAccountInformation clone() => SBFirebaseAccountInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SBFirebaseAccountInformation copyWith(void Function(SBFirebaseAccountInformation) updates) => super.copyWith((message) => updates(message as SBFirebaseAccountInformation)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SBFirebaseAccountInformation create() => SBFirebaseAccountInformation._();
  SBFirebaseAccountInformation createEmptyInstance() => create();
  static $pb.PbList<SBFirebaseAccountInformation> createRepeated() => $pb.PbList<SBFirebaseAccountInformation>();
  @$core.pragma('dart2js:noInline')
  static SBFirebaseAccountInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SBFirebaseAccountInformation>(create);
  static SBFirebaseAccountInformation _defaultInstance;

  @$pb.TagNumber(6)
  $core.String get fireBaseProjectId => $_getSZ(0);
  @$pb.TagNumber(6)
  set fireBaseProjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(6)
  $core.bool hasFireBaseProjectId() => $_has(0);
  @$pb.TagNumber(6)
  void clearFireBaseProjectId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get fireBaseApiKey => $_getSZ(1);
  @$pb.TagNumber(7)
  set fireBaseApiKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(7)
  $core.bool hasFireBaseApiKey() => $_has(1);
  @$pb.TagNumber(7)
  void clearFireBaseApiKey() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userEmail => $_getSZ(2);
  @$pb.TagNumber(8)
  set userEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserEmail() => $_has(2);
  @$pb.TagNumber(8)
  void clearUserEmail() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get userPassword => $_getSZ(3);
  @$pb.TagNumber(9)
  set userPassword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(9)
  $core.bool hasUserPassword() => $_has(3);
  @$pb.TagNumber(9)
  void clearUserPassword() => clearField(9);
}

