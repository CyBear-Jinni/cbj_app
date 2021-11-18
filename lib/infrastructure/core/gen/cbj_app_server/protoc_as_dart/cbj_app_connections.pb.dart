///
//  Generated code. Do not modify.
//  source: cbj_app_connections.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CompInfoSB extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompInfoSB', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compIP', protoName: 'compIP')
    ..hasRequiredFields = false
  ;

  CompInfoSB._() : super();
  factory CompInfoSB({
    $core.String? compIP,
  }) {
    final _result = create();
    if (compIP != null) {
      _result.compIP = compIP;
    }
    return _result;
  }
  factory CompInfoSB.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompInfoSB.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompInfoSB clone() => CompInfoSB()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompInfoSB copyWith(void Function(CompInfoSB) updates) => super.copyWith((message) => updates(message as CompInfoSB)) as CompInfoSB; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompInfoSB create() => CompInfoSB._();
  CompInfoSB createEmptyInstance() => create();
  static $pb.PbList<CompInfoSB> createRepeated() => $pb.PbList<CompInfoSB>();
  @$core.pragma('dart2js:noInline')
  static CompInfoSB getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompInfoSB>(create);
  static CompInfoSB? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get compIP => $_getSZ(0);
  @$pb.TagNumber(2)
  set compIP($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompIP() => $_has(0);
  @$pb.TagNumber(2)
  void clearCompIP() => clearField(2);
}

class CBJCommendStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJCommendStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  CBJCommendStatus._() : super();
  factory CBJCommendStatus({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory CBJCommendStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CBJCommendStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CBJCommendStatus clone() => CBJCommendStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CBJCommendStatus copyWith(void Function(CBJCommendStatus) updates) => super.copyWith((message) => updates(message as CBJCommendStatus)) as CBJCommendStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CBJCommendStatus create() => CBJCommendStatus._();
  CBJCommendStatus createEmptyInstance() => create();
  static $pb.PbList<CBJCommendStatus> createRepeated() => $pb.PbList<CBJCommendStatus>();
  @$core.pragma('dart2js:noInline')
  static CBJCommendStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CBJCommendStatus>(create);
  static CBJCommendStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class CompInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOM<CbjIno>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cbjInfo', protoName: 'cbjInfo', subBuilder: CbjIno.create)
    ..aOM<CompSpecs>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compSpecs', protoName: 'compSpecs', subBuilder: CompSpecs.create)
    ..hasRequiredFields = false
  ;

  CompInfo._() : super();
  factory CompInfo({
    CbjIno? cbjInfo,
    CompSpecs? compSpecs,
  }) {
    final _result = create();
    if (cbjInfo != null) {
      _result.cbjInfo = cbjInfo;
    }
    if (compSpecs != null) {
      _result.compSpecs = compSpecs;
    }
    return _result;
  }
  factory CompInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompInfo clone() => CompInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompInfo copyWith(void Function(CompInfo) updates) => super.copyWith((message) => updates(message as CompInfo)) as CompInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompInfo create() => CompInfo._();
  CompInfo createEmptyInstance() => create();
  static $pb.PbList<CompInfo> createRepeated() => $pb.PbList<CompInfo>();
  @$core.pragma('dart2js:noInline')
  static CompInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompInfo>(create);
  static CompInfo? _defaultInstance;

  @$pb.TagNumber(3)
  CbjIno get cbjInfo => $_getN(0);
  @$pb.TagNumber(3)
  set cbjInfo(CbjIno v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCbjInfo() => $_has(0);
  @$pb.TagNumber(3)
  void clearCbjInfo() => clearField(3);
  @$pb.TagNumber(3)
  CbjIno ensureCbjInfo() => $_ensure(0);

  @$pb.TagNumber(4)
  CompSpecs get compSpecs => $_getN(1);
  @$pb.TagNumber(4)
  set compSpecs(CompSpecs v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompSpecs() => $_has(1);
  @$pb.TagNumber(4)
  void clearCompSpecs() => clearField(4);
  @$pb.TagNumber(4)
  CompSpecs ensureCompSpecs() => $_ensure(1);
}

class CbjIno extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CbjIno', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceName', protoName: 'deviceName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubspecYamlVersion', protoName: 'pubspecYamlVersion')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protoLastGenDate', protoName: 'protoLastGenDate')
    ..hasRequiredFields = false
  ;

  CbjIno._() : super();
  factory CbjIno({
    $core.String? deviceName,
    $core.String? pubspecYamlVersion,
    $core.String? protoLastGenDate,
  }) {
    final _result = create();
    if (deviceName != null) {
      _result.deviceName = deviceName;
    }
    if (pubspecYamlVersion != null) {
      _result.pubspecYamlVersion = pubspecYamlVersion;
    }
    if (protoLastGenDate != null) {
      _result.protoLastGenDate = protoLastGenDate;
    }
    return _result;
  }
  factory CbjIno.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CbjIno.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CbjIno clone() => CbjIno()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CbjIno copyWith(void Function(CbjIno) updates) => super.copyWith((message) => updates(message as CbjIno)) as CbjIno; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CbjIno create() => CbjIno._();
  CbjIno createEmptyInstance() => create();
  static $pb.PbList<CbjIno> createRepeated() => $pb.PbList<CbjIno>();
  @$core.pragma('dart2js:noInline')
  static CbjIno getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CbjIno>(create);
  static CbjIno? _defaultInstance;

  @$pb.TagNumber(5)
  $core.String get deviceName => $_getSZ(0);
  @$pb.TagNumber(5)
  set deviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeviceName() => $_has(0);
  @$pb.TagNumber(5)
  void clearDeviceName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get pubspecYamlVersion => $_getSZ(1);
  @$pb.TagNumber(6)
  set pubspecYamlVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(6)
  $core.bool hasPubspecYamlVersion() => $_has(1);
  @$pb.TagNumber(6)
  void clearPubspecYamlVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get protoLastGenDate => $_getSZ(2);
  @$pb.TagNumber(7)
  set protoLastGenDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(7)
  $core.bool hasProtoLastGenDate() => $_has(2);
  @$pb.TagNumber(7)
  void clearProtoLastGenDate() => clearField(7);
}

class CompSpecs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompSpecs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CBJAppConnections'), createEmptyInstance: create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compId', protoName: 'compId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compUuid', protoName: 'compUuid')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compOs', protoName: 'compOs')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compModel', protoName: 'compModel')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compType', protoName: 'compType')
    ..hasRequiredFields = false
  ;

  CompSpecs._() : super();
  factory CompSpecs({
    $core.String? compId,
    $core.String? compUuid,
    $core.String? compOs,
    $core.String? compModel,
    $core.String? compType,
  }) {
    final _result = create();
    if (compId != null) {
      _result.compId = compId;
    }
    if (compUuid != null) {
      _result.compUuid = compUuid;
    }
    if (compOs != null) {
      _result.compOs = compOs;
    }
    if (compModel != null) {
      _result.compModel = compModel;
    }
    if (compType != null) {
      _result.compType = compType;
    }
    return _result;
  }
  factory CompSpecs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompSpecs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompSpecs clone() => CompSpecs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompSpecs copyWith(void Function(CompSpecs) updates) => super.copyWith((message) => updates(message as CompSpecs)) as CompSpecs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompSpecs create() => CompSpecs._();
  CompSpecs createEmptyInstance() => create();
  static $pb.PbList<CompSpecs> createRepeated() => $pb.PbList<CompSpecs>();
  @$core.pragma('dart2js:noInline')
  static CompSpecs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompSpecs>(create);
  static CompSpecs? _defaultInstance;

  @$pb.TagNumber(8)
  $core.String get compId => $_getSZ(0);
  @$pb.TagNumber(8)
  set compId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(8)
  $core.bool hasCompId() => $_has(0);
  @$pb.TagNumber(8)
  void clearCompId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get compUuid => $_getSZ(1);
  @$pb.TagNumber(9)
  set compUuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(9)
  $core.bool hasCompUuid() => $_has(1);
  @$pb.TagNumber(9)
  void clearCompUuid() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get compOs => $_getSZ(2);
  @$pb.TagNumber(10)
  set compOs($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasCompOs() => $_has(2);
  @$pb.TagNumber(10)
  void clearCompOs() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get compModel => $_getSZ(3);
  @$pb.TagNumber(11)
  set compModel($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasCompModel() => $_has(3);
  @$pb.TagNumber(11)
  void clearCompModel() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get compType => $_getSZ(4);
  @$pb.TagNumber(12)
  set compType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasCompType() => $_has(4);
  @$pb.TagNumber(12)
  void clearCompType() => clearField(12);
}

