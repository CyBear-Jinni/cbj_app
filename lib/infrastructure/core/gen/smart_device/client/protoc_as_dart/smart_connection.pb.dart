///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'smart_connection.pbenum.dart';

export 'smart_connection.pbenum.dart';

class ClientStatusRequests extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientStatusRequests', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<AllRemoteCommands>(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allRemoteCommands', protoName: 'allRemoteCommands', subBuilder: AllRemoteCommands.create)
    ..hasRequiredFields = false
  ;

  ClientStatusRequests._() : super();
  factory ClientStatusRequests({
    AllRemoteCommands? allRemoteCommands,
  }) {
    final _result = create();
    if (allRemoteCommands != null) {
      _result.allRemoteCommands = allRemoteCommands;
    }
    return _result;
  }
  factory ClientStatusRequests.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientStatusRequests.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientStatusRequests clone() => ClientStatusRequests()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientStatusRequests copyWith(void Function(ClientStatusRequests) updates) => super.copyWith((message) => updates(message as ClientStatusRequests)) as ClientStatusRequests; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientStatusRequests create() => ClientStatusRequests._();
  ClientStatusRequests createEmptyInstance() => create();
  static $pb.PbList<ClientStatusRequests> createRepeated() => $pb.PbList<ClientStatusRequests>();
  @$core.pragma('dart2js:noInline')
  static ClientStatusRequests getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientStatusRequests>(create);
  static ClientStatusRequests? _defaultInstance;

  @$pb.TagNumber(41)
  AllRemoteCommands get allRemoteCommands => $_getN(0);
  @$pb.TagNumber(41)
  set allRemoteCommands(AllRemoteCommands v) { setField(41, v); }
  @$pb.TagNumber(41)
  $core.bool hasAllRemoteCommands() => $_has(0);
  @$pb.TagNumber(41)
  void clearAllRemoteCommands() => clearField(41);
  @$pb.TagNumber(41)
  AllRemoteCommands ensureAllRemoteCommands() => $_ensure(0);
}

class RequestsAndStatusFromHub extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestsAndStatusFromHub', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<AllRemoteCommands>(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allRemoteCommands', protoName: 'allRemoteCommands', subBuilder: AllRemoteCommands.create)
    ..hasRequiredFields = false
  ;

  RequestsAndStatusFromHub._() : super();
  factory RequestsAndStatusFromHub({
    AllRemoteCommands? allRemoteCommands,
  }) {
    final _result = create();
    if (allRemoteCommands != null) {
      _result.allRemoteCommands = allRemoteCommands;
    }
    return _result;
  }
  factory RequestsAndStatusFromHub.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestsAndStatusFromHub.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestsAndStatusFromHub clone() => RequestsAndStatusFromHub()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestsAndStatusFromHub copyWith(void Function(RequestsAndStatusFromHub) updates) => super.copyWith((message) => updates(message as RequestsAndStatusFromHub)) as RequestsAndStatusFromHub; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestsAndStatusFromHub create() => RequestsAndStatusFromHub._();
  RequestsAndStatusFromHub createEmptyInstance() => create();
  static $pb.PbList<RequestsAndStatusFromHub> createRepeated() => $pb.PbList<RequestsAndStatusFromHub>();
  @$core.pragma('dart2js:noInline')
  static RequestsAndStatusFromHub getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestsAndStatusFromHub>(create);
  static RequestsAndStatusFromHub? _defaultInstance;

  @$pb.TagNumber(42)
  AllRemoteCommands get allRemoteCommands => $_getN(0);
  @$pb.TagNumber(42)
  set allRemoteCommands(AllRemoteCommands v) { setField(42, v); }
  @$pb.TagNumber(42)
  $core.bool hasAllRemoteCommands() => $_has(0);
  @$pb.TagNumber(42)
  void clearAllRemoteCommands() => clearField(42);
  @$pb.TagNumber(42)
  AllRemoteCommands ensureAllRemoteCommands() => $_ensure(0);
}

class HubStatusAndRequests extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HubStatusAndRequests', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<AllRemoteCommands>(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allRemoteCommands', protoName: 'allRemoteCommands', subBuilder: AllRemoteCommands.create)
    ..hasRequiredFields = false
  ;

  HubStatusAndRequests._() : super();
  factory HubStatusAndRequests({
    AllRemoteCommands? allRemoteCommands,
  }) {
    final _result = create();
    if (allRemoteCommands != null) {
      _result.allRemoteCommands = allRemoteCommands;
    }
    return _result;
  }
  factory HubStatusAndRequests.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HubStatusAndRequests.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HubStatusAndRequests clone() => HubStatusAndRequests()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HubStatusAndRequests copyWith(void Function(HubStatusAndRequests) updates) => super.copyWith((message) => updates(message as HubStatusAndRequests)) as HubStatusAndRequests; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HubStatusAndRequests create() => HubStatusAndRequests._();
  HubStatusAndRequests createEmptyInstance() => create();
  static $pb.PbList<HubStatusAndRequests> createRepeated() => $pb.PbList<HubStatusAndRequests>();
  @$core.pragma('dart2js:noInline')
  static HubStatusAndRequests getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HubStatusAndRequests>(create);
  static HubStatusAndRequests? _defaultInstance;

  @$pb.TagNumber(43)
  AllRemoteCommands get allRemoteCommands => $_getN(0);
  @$pb.TagNumber(43)
  set allRemoteCommands(AllRemoteCommands v) { setField(43, v); }
  @$pb.TagNumber(43)
  $core.bool hasAllRemoteCommands() => $_has(0);
  @$pb.TagNumber(43)
  void clearAllRemoteCommands() => clearField(43);
  @$pb.TagNumber(43)
  AllRemoteCommands ensureAllRemoteCommands() => $_ensure(0);
}

class RequestsAndStatusFromClient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestsAndStatusFromClient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<AllRemoteCommands>(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allRemoteCommands', protoName: 'allRemoteCommands', subBuilder: AllRemoteCommands.create)
    ..hasRequiredFields = false
  ;

  RequestsAndStatusFromClient._() : super();
  factory RequestsAndStatusFromClient({
    AllRemoteCommands? allRemoteCommands,
  }) {
    final _result = create();
    if (allRemoteCommands != null) {
      _result.allRemoteCommands = allRemoteCommands;
    }
    return _result;
  }
  factory RequestsAndStatusFromClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestsAndStatusFromClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestsAndStatusFromClient clone() => RequestsAndStatusFromClient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestsAndStatusFromClient copyWith(void Function(RequestsAndStatusFromClient) updates) => super.copyWith((message) => updates(message as RequestsAndStatusFromClient)) as RequestsAndStatusFromClient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestsAndStatusFromClient create() => RequestsAndStatusFromClient._();
  RequestsAndStatusFromClient createEmptyInstance() => create();
  static $pb.PbList<RequestsAndStatusFromClient> createRepeated() => $pb.PbList<RequestsAndStatusFromClient>();
  @$core.pragma('dart2js:noInline')
  static RequestsAndStatusFromClient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestsAndStatusFromClient>(create);
  static RequestsAndStatusFromClient? _defaultInstance;

  @$pb.TagNumber(44)
  AllRemoteCommands get allRemoteCommands => $_getN(0);
  @$pb.TagNumber(44)
  set allRemoteCommands(AllRemoteCommands v) { setField(44, v); }
  @$pb.TagNumber(44)
  $core.bool hasAllRemoteCommands() => $_has(0);
  @$pb.TagNumber(44)
  void clearAllRemoteCommands() => clearField(44);
  @$pb.TagNumber(44)
  AllRemoteCommands ensureAllRemoteCommands() => $_ensure(0);
}

class AllRemoteCommands extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AllRemoteCommands', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<SmartDeviceInfo>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smartDeviceInfo', protoName: 'smartDeviceInfo', subBuilder: SmartDeviceInfo.create)
    ..hasRequiredFields = false
  ;

  AllRemoteCommands._() : super();
  factory AllRemoteCommands({
    SmartDeviceInfo? smartDeviceInfo,
  }) {
    final _result = create();
    if (smartDeviceInfo != null) {
      _result.smartDeviceInfo = smartDeviceInfo;
    }
    return _result;
  }
  factory AllRemoteCommands.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllRemoteCommands.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllRemoteCommands clone() => AllRemoteCommands()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllRemoteCommands copyWith(void Function(AllRemoteCommands) updates) => super.copyWith((message) => updates(message as AllRemoteCommands)) as AllRemoteCommands; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllRemoteCommands create() => AllRemoteCommands._();
  AllRemoteCommands createEmptyInstance() => create();
  static $pb.PbList<AllRemoteCommands> createRepeated() => $pb.PbList<AllRemoteCommands>();
  @$core.pragma('dart2js:noInline')
  static AllRemoteCommands getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllRemoteCommands>(create);
  static AllRemoteCommands? _defaultInstance;

  @$pb.TagNumber(40)
  SmartDeviceInfo get smartDeviceInfo => $_getN(0);
  @$pb.TagNumber(40)
  set smartDeviceInfo(SmartDeviceInfo v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasSmartDeviceInfo() => $_has(0);
  @$pb.TagNumber(40)
  void clearSmartDeviceInfo() => clearField(40);
  @$pb.TagNumber(40)
  SmartDeviceInfo ensureSmartDeviceInfo() => $_ensure(0);
}

class FirstSetupMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FirstSetupMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<CompInfo>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compInfo', protoName: 'compInfo', subBuilder: CompInfo.create)
    ..aOM<FirebaseAccountInformation>(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firebaseAccountInformation', protoName: 'firebaseAccountInformation', subBuilder: FirebaseAccountInformation.create)
    ..hasRequiredFields = false
  ;

  FirstSetupMessage._() : super();
  factory FirstSetupMessage({
    CompInfo? compInfo,
    FirebaseAccountInformation? firebaseAccountInformation,
  }) {
    final _result = create();
    if (compInfo != null) {
      _result.compInfo = compInfo;
    }
    if (firebaseAccountInformation != null) {
      _result.firebaseAccountInformation = firebaseAccountInformation;
    }
    return _result;
  }
  factory FirstSetupMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirstSetupMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirstSetupMessage clone() => FirstSetupMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirstSetupMessage copyWith(void Function(FirstSetupMessage) updates) => super.copyWith((message) => updates(message as FirstSetupMessage)) as FirstSetupMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FirstSetupMessage create() => FirstSetupMessage._();
  FirstSetupMessage createEmptyInstance() => create();
  static $pb.PbList<FirstSetupMessage> createRepeated() => $pb.PbList<FirstSetupMessage>();
  @$core.pragma('dart2js:noInline')
  static FirstSetupMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirstSetupMessage>(create);
  static FirstSetupMessage? _defaultInstance;

  @$pb.TagNumber(38)
  CompInfo get compInfo => $_getN(0);
  @$pb.TagNumber(38)
  set compInfo(CompInfo v) { setField(38, v); }
  @$pb.TagNumber(38)
  $core.bool hasCompInfo() => $_has(0);
  @$pb.TagNumber(38)
  void clearCompInfo() => clearField(38);
  @$pb.TagNumber(38)
  CompInfo ensureCompInfo() => $_ensure(0);

  @$pb.TagNumber(39)
  FirebaseAccountInformation get firebaseAccountInformation => $_getN(1);
  @$pb.TagNumber(39)
  set firebaseAccountInformation(FirebaseAccountInformation v) { setField(39, v); }
  @$pb.TagNumber(39)
  $core.bool hasFirebaseAccountInformation() => $_has(1);
  @$pb.TagNumber(39)
  void clearFirebaseAccountInformation() => clearField(39);
  @$pb.TagNumber(39)
  FirebaseAccountInformation ensureFirebaseAccountInformation() => $_ensure(1);
}

class CompInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<CompSpecs>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compSpecs', protoName: 'compSpecs', subBuilder: CompSpecs.create)
    ..pc<SmartDeviceInfo>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smartDevicesInComp', $pb.PbFieldType.PM, protoName: 'smartDevicesInComp', subBuilder: SmartDeviceInfo.create)
    ..hasRequiredFields = false
  ;

  CompInfo._() : super();
  factory CompInfo({
    CompSpecs? compSpecs,
    $core.Iterable<SmartDeviceInfo>? smartDevicesInComp,
  }) {
    final _result = create();
    if (compSpecs != null) {
      _result.compSpecs = compSpecs;
    }
    if (smartDevicesInComp != null) {
      _result.smartDevicesInComp.addAll(smartDevicesInComp);
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

  @$pb.TagNumber(21)
  CompSpecs get compSpecs => $_getN(0);
  @$pb.TagNumber(21)
  set compSpecs(CompSpecs v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasCompSpecs() => $_has(0);
  @$pb.TagNumber(21)
  void clearCompSpecs() => clearField(21);
  @$pb.TagNumber(21)
  CompSpecs ensureCompSpecs() => $_ensure(0);

  @$pb.TagNumber(28)
  $core.List<SmartDeviceInfo> get smartDevicesInComp => $_getList(1);
}

class CompSpecs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompSpecs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compId', protoName: 'compId')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compUuid', protoName: 'compUuid')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compOs', protoName: 'compOs')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compModel', protoName: 'compModel')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compType', protoName: 'compType')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubspecYamlVersion', protoName: 'pubspecYamlVersion')
    ..hasRequiredFields = false
  ;

  CompSpecs._() : super();
  factory CompSpecs({
    $core.String? compId,
    $core.String? compUuid,
    $core.String? compOs,
    $core.String? compModel,
    $core.String? compType,
    $core.String? pubspecYamlVersion,
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
    if (pubspecYamlVersion != null) {
      _result.pubspecYamlVersion = pubspecYamlVersion;
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

  @$pb.TagNumber(22)
  $core.String get compId => $_getSZ(0);
  @$pb.TagNumber(22)
  set compId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(22)
  $core.bool hasCompId() => $_has(0);
  @$pb.TagNumber(22)
  void clearCompId() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get compUuid => $_getSZ(1);
  @$pb.TagNumber(23)
  set compUuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(23)
  $core.bool hasCompUuid() => $_has(1);
  @$pb.TagNumber(23)
  void clearCompUuid() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get compOs => $_getSZ(2);
  @$pb.TagNumber(24)
  set compOs($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(24)
  $core.bool hasCompOs() => $_has(2);
  @$pb.TagNumber(24)
  void clearCompOs() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get compModel => $_getSZ(3);
  @$pb.TagNumber(25)
  set compModel($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(25)
  $core.bool hasCompModel() => $_has(3);
  @$pb.TagNumber(25)
  void clearCompModel() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get compType => $_getSZ(4);
  @$pb.TagNumber(26)
  set compType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(26)
  $core.bool hasCompType() => $_has(4);
  @$pb.TagNumber(26)
  void clearCompType() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get pubspecYamlVersion => $_getSZ(5);
  @$pb.TagNumber(27)
  set pubspecYamlVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(27)
  $core.bool hasPubspecYamlVersion() => $_has(5);
  @$pb.TagNumber(27)
  void clearPubspecYamlVersion() => clearField(27);
}

class MicrocontrollerSpecs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MicrocontrollerSpecs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'microcontrollerModel', protoName: 'microcontrollerModel')
    ..aOS(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'microcontrollerType', protoName: 'microcontrollerType')
    ..aOS(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareVersion', protoName: 'softwareVersion')
    ..hasRequiredFields = false
  ;

  MicrocontrollerSpecs._() : super();
  factory MicrocontrollerSpecs({
    $core.String? microcontrollerModel,
    $core.String? microcontrollerType,
    $core.String? softwareVersion,
  }) {
    final _result = create();
    if (microcontrollerModel != null) {
      _result.microcontrollerModel = microcontrollerModel;
    }
    if (microcontrollerType != null) {
      _result.microcontrollerType = microcontrollerType;
    }
    if (softwareVersion != null) {
      _result.softwareVersion = softwareVersion;
    }
    return _result;
  }
  factory MicrocontrollerSpecs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MicrocontrollerSpecs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MicrocontrollerSpecs clone() => MicrocontrollerSpecs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MicrocontrollerSpecs copyWith(void Function(MicrocontrollerSpecs) updates) => super.copyWith((message) => updates(message as MicrocontrollerSpecs)) as MicrocontrollerSpecs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MicrocontrollerSpecs create() => MicrocontrollerSpecs._();
  MicrocontrollerSpecs createEmptyInstance() => create();
  static $pb.PbList<MicrocontrollerSpecs> createRepeated() => $pb.PbList<MicrocontrollerSpecs>();
  @$core.pragma('dart2js:noInline')
  static MicrocontrollerSpecs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MicrocontrollerSpecs>(create);
  static MicrocontrollerSpecs? _defaultInstance;

  @$pb.TagNumber(31)
  $core.String get microcontrollerModel => $_getSZ(0);
  @$pb.TagNumber(31)
  set microcontrollerModel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(31)
  $core.bool hasMicrocontrollerModel() => $_has(0);
  @$pb.TagNumber(31)
  void clearMicrocontrollerModel() => clearField(31);

  @$pb.TagNumber(32)
  $core.String get microcontrollerType => $_getSZ(1);
  @$pb.TagNumber(32)
  set microcontrollerType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(32)
  $core.bool hasMicrocontrollerType() => $_has(1);
  @$pb.TagNumber(32)
  void clearMicrocontrollerType() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get softwareVersion => $_getSZ(2);
  @$pb.TagNumber(33)
  set softwareVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(33)
  $core.bool hasSoftwareVersion() => $_has(2);
  @$pb.TagNumber(33)
  void clearSoftwareVersion() => clearField(33);
}

class SmartDeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartDeviceInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultName', protoName: 'defaultName')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId', protoName: 'roomId')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderDeviceModel', protoName: 'senderDeviceModel')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderDeviceOs', protoName: 'senderDeviceOs')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderId', protoName: 'senderId')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverTimeStamp', protoName: 'serverTimeStamp')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateMassage', protoName: 'stateMassage')
    ..aOB(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isComputer', protoName: 'isComputer')
    ..aOM<CompSpecs>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compSpecs', protoName: 'compSpecs', subBuilder: CompSpecs.create)
    ..aOM<MicrocontrollerSpecs>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'microcontrollerSpecsSpecs', protoName: 'microcontrollerSpecsSpecs', subBuilder: MicrocontrollerSpecs.create)
    ..aOM<DeviceTypesActions>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceTypesActions', protoName: 'deviceTypesActions', subBuilder: DeviceTypesActions.create)
    ..hasRequiredFields = false
  ;

  SmartDeviceInfo._() : super();
  factory SmartDeviceInfo({
    $core.String? id,
    $core.String? state,
    $core.String? defaultName,
    $core.String? roomId,
    $core.String? senderDeviceModel,
    $core.String? senderDeviceOs,
    $core.String? senderId,
    $core.String? serverTimeStamp,
    $core.String? stateMassage,
    $core.bool? isComputer,
    CompSpecs? compSpecs,
    MicrocontrollerSpecs? microcontrollerSpecsSpecs,
    DeviceTypesActions? deviceTypesActions,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (state != null) {
      _result.state = state;
    }
    if (defaultName != null) {
      _result.defaultName = defaultName;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    if (senderDeviceModel != null) {
      _result.senderDeviceModel = senderDeviceModel;
    }
    if (senderDeviceOs != null) {
      _result.senderDeviceOs = senderDeviceOs;
    }
    if (senderId != null) {
      _result.senderId = senderId;
    }
    if (serverTimeStamp != null) {
      _result.serverTimeStamp = serverTimeStamp;
    }
    if (stateMassage != null) {
      _result.stateMassage = stateMassage;
    }
    if (isComputer != null) {
      _result.isComputer = isComputer;
    }
    if (compSpecs != null) {
      _result.compSpecs = compSpecs;
    }
    if (microcontrollerSpecsSpecs != null) {
      _result.microcontrollerSpecsSpecs = microcontrollerSpecsSpecs;
    }
    if (deviceTypesActions != null) {
      _result.deviceTypesActions = deviceTypesActions;
    }
    return _result;
  }
  factory SmartDeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartDeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmartDeviceInfo clone() => SmartDeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmartDeviceInfo copyWith(void Function(SmartDeviceInfo) updates) => super.copyWith((message) => updates(message as SmartDeviceInfo)) as SmartDeviceInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartDeviceInfo create() => SmartDeviceInfo._();
  SmartDeviceInfo createEmptyInstance() => create();
  static $pb.PbList<SmartDeviceInfo> createRepeated() => $pb.PbList<SmartDeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static SmartDeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartDeviceInfo>(create);
  static SmartDeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(1);
  @$pb.TagNumber(3)
  set state($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(14)
  $core.String get defaultName => $_getSZ(2);
  @$pb.TagNumber(14)
  set defaultName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(14)
  $core.bool hasDefaultName() => $_has(2);
  @$pb.TagNumber(14)
  void clearDefaultName() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get roomId => $_getSZ(3);
  @$pb.TagNumber(15)
  set roomId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(15)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(15)
  void clearRoomId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get senderDeviceModel => $_getSZ(4);
  @$pb.TagNumber(16)
  set senderDeviceModel($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(16)
  $core.bool hasSenderDeviceModel() => $_has(4);
  @$pb.TagNumber(16)
  void clearSenderDeviceModel() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get senderDeviceOs => $_getSZ(5);
  @$pb.TagNumber(17)
  set senderDeviceOs($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(17)
  $core.bool hasSenderDeviceOs() => $_has(5);
  @$pb.TagNumber(17)
  void clearSenderDeviceOs() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get senderId => $_getSZ(6);
  @$pb.TagNumber(18)
  set senderId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(18)
  $core.bool hasSenderId() => $_has(6);
  @$pb.TagNumber(18)
  void clearSenderId() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get serverTimeStamp => $_getSZ(7);
  @$pb.TagNumber(19)
  set serverTimeStamp($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(19)
  $core.bool hasServerTimeStamp() => $_has(7);
  @$pb.TagNumber(19)
  void clearServerTimeStamp() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get stateMassage => $_getSZ(8);
  @$pb.TagNumber(20)
  set stateMassage($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(20)
  $core.bool hasStateMassage() => $_has(8);
  @$pb.TagNumber(20)
  void clearStateMassage() => clearField(20);

  @$pb.TagNumber(29)
  $core.bool get isComputer => $_getBF(9);
  @$pb.TagNumber(29)
  set isComputer($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(29)
  $core.bool hasIsComputer() => $_has(9);
  @$pb.TagNumber(29)
  void clearIsComputer() => clearField(29);

  @$pb.TagNumber(30)
  CompSpecs get compSpecs => $_getN(10);
  @$pb.TagNumber(30)
  set compSpecs(CompSpecs v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasCompSpecs() => $_has(10);
  @$pb.TagNumber(30)
  void clearCompSpecs() => clearField(30);
  @$pb.TagNumber(30)
  CompSpecs ensureCompSpecs() => $_ensure(10);

  @$pb.TagNumber(31)
  MicrocontrollerSpecs get microcontrollerSpecsSpecs => $_getN(11);
  @$pb.TagNumber(31)
  set microcontrollerSpecsSpecs(MicrocontrollerSpecs v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasMicrocontrollerSpecsSpecs() => $_has(11);
  @$pb.TagNumber(31)
  void clearMicrocontrollerSpecsSpecs() => clearField(31);
  @$pb.TagNumber(31)
  MicrocontrollerSpecs ensureMicrocontrollerSpecsSpecs() => $_ensure(11);

  @$pb.TagNumber(34)
  DeviceTypesActions get deviceTypesActions => $_getN(12);
  @$pb.TagNumber(34)
  set deviceTypesActions(DeviceTypesActions v) { setField(34, v); }
  @$pb.TagNumber(34)
  $core.bool hasDeviceTypesActions() => $_has(12);
  @$pb.TagNumber(34)
  void clearDeviceTypesActions() => clearField(34);
  @$pb.TagNumber(34)
  DeviceTypesActions ensureDeviceTypesActions() => $_ensure(12);
}

class SmartDeviceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartDeviceStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onOffState', protoName: 'onOffState')
    ..hasRequiredFields = false
  ;

  SmartDeviceStatus._() : super();
  factory SmartDeviceStatus({
    $core.bool? onOffState,
  }) {
    final _result = create();
    if (onOffState != null) {
      _result.onOffState = onOffState;
    }
    return _result;
  }
  factory SmartDeviceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartDeviceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmartDeviceStatus clone() => SmartDeviceStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmartDeviceStatus copyWith(void Function(SmartDeviceStatus) updates) => super.copyWith((message) => updates(message as SmartDeviceStatus)) as SmartDeviceStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartDeviceStatus create() => SmartDeviceStatus._();
  SmartDeviceStatus createEmptyInstance() => create();
  static $pb.PbList<SmartDeviceStatus> createRepeated() => $pb.PbList<SmartDeviceStatus>();
  @$core.pragma('dart2js:noInline')
  static SmartDeviceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartDeviceStatus>(create);
  static SmartDeviceStatus? _defaultInstance;

  @$pb.TagNumber(4)
  $core.bool get onOffState => $_getBF(0);
  @$pb.TagNumber(4)
  set onOffState($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(4)
  $core.bool hasOnOffState() => $_has(0);
  @$pb.TagNumber(4)
  void clearOnOffState() => clearField(4);
}

class CommendStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommendStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  CommendStatus._() : super();
  factory CommendStatus({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory CommendStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommendStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommendStatus clone() => CommendStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommendStatus copyWith(void Function(CommendStatus) updates) => super.copyWith((message) => updates(message as CommendStatus)) as CommendStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommendStatus create() => CommendStatus._();
  CommendStatus createEmptyInstance() => create();
  static $pb.PbList<CommendStatus> createRepeated() => $pb.PbList<CommendStatus>();
  @$core.pragma('dart2js:noInline')
  static CommendStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommendStatus>(create);
  static CommendStatus? _defaultInstance;

  @$pb.TagNumber(5)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(5)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(5)
  void clearSuccess() => clearField(5);
}

class SmartDeviceUpdateDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartDeviceUpdateDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOM<SmartDeviceInfo>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smartDevice', protoName: 'smartDevice', subBuilder: SmartDeviceInfo.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newName', protoName: 'newName')
    ..hasRequiredFields = false
  ;

  SmartDeviceUpdateDetails._() : super();
  factory SmartDeviceUpdateDetails({
    SmartDeviceInfo? smartDevice,
    $core.String? newName,
  }) {
    final _result = create();
    if (smartDevice != null) {
      _result.smartDevice = smartDevice;
    }
    if (newName != null) {
      _result.newName = newName;
    }
    return _result;
  }
  factory SmartDeviceUpdateDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartDeviceUpdateDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmartDeviceUpdateDetails clone() => SmartDeviceUpdateDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmartDeviceUpdateDetails copyWith(void Function(SmartDeviceUpdateDetails) updates) => super.copyWith((message) => updates(message as SmartDeviceUpdateDetails)) as SmartDeviceUpdateDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartDeviceUpdateDetails create() => SmartDeviceUpdateDetails._();
  SmartDeviceUpdateDetails createEmptyInstance() => create();
  static $pb.PbList<SmartDeviceUpdateDetails> createRepeated() => $pb.PbList<SmartDeviceUpdateDetails>();
  @$core.pragma('dart2js:noInline')
  static SmartDeviceUpdateDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartDeviceUpdateDetails>(create);
  static SmartDeviceUpdateDetails? _defaultInstance;

  @$pb.TagNumber(6)
  SmartDeviceInfo get smartDevice => $_getN(0);
  @$pb.TagNumber(6)
  set smartDevice(SmartDeviceInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSmartDevice() => $_has(0);
  @$pb.TagNumber(6)
  void clearSmartDevice() => clearField(6);
  @$pb.TagNumber(6)
  SmartDeviceInfo ensureSmartDevice() => $_ensure(0);

  @$pb.TagNumber(7)
  $core.String get newName => $_getSZ(1);
  @$pb.TagNumber(7)
  set newName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(7)
  $core.bool hasNewName() => $_has(1);
  @$pb.TagNumber(7)
  void clearNewName() => clearField(7);
}

class FirebaseAccountInformation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FirebaseAccountInformation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fireBaseProjectId', protoName: 'fireBaseProjectId')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fireBaseApiKey', protoName: 'fireBaseApiKey')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userEmail', protoName: 'userEmail')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPassword', protoName: 'userPassword')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homeId', protoName: 'homeId')
    ..hasRequiredFields = false
  ;

  FirebaseAccountInformation._() : super();
  factory FirebaseAccountInformation({
    $core.String? fireBaseProjectId,
    $core.String? fireBaseApiKey,
    $core.String? userEmail,
    $core.String? userPassword,
    $core.String? homeId,
  }) {
    final _result = create();
    if (fireBaseProjectId != null) {
      _result.fireBaseProjectId = fireBaseProjectId;
    }
    if (fireBaseApiKey != null) {
      _result.fireBaseApiKey = fireBaseApiKey;
    }
    if (userEmail != null) {
      _result.userEmail = userEmail;
    }
    if (userPassword != null) {
      _result.userPassword = userPassword;
    }
    if (homeId != null) {
      _result.homeId = homeId;
    }
    return _result;
  }
  factory FirebaseAccountInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirebaseAccountInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirebaseAccountInformation clone() => FirebaseAccountInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirebaseAccountInformation copyWith(void Function(FirebaseAccountInformation) updates) => super.copyWith((message) => updates(message as FirebaseAccountInformation)) as FirebaseAccountInformation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FirebaseAccountInformation create() => FirebaseAccountInformation._();
  FirebaseAccountInformation createEmptyInstance() => create();
  static $pb.PbList<FirebaseAccountInformation> createRepeated() => $pb.PbList<FirebaseAccountInformation>();
  @$core.pragma('dart2js:noInline')
  static FirebaseAccountInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirebaseAccountInformation>(create);
  static FirebaseAccountInformation? _defaultInstance;

  @$pb.TagNumber(8)
  $core.String get fireBaseProjectId => $_getSZ(0);
  @$pb.TagNumber(8)
  set fireBaseProjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(8)
  $core.bool hasFireBaseProjectId() => $_has(0);
  @$pb.TagNumber(8)
  void clearFireBaseProjectId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get fireBaseApiKey => $_getSZ(1);
  @$pb.TagNumber(9)
  set fireBaseApiKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(9)
  $core.bool hasFireBaseApiKey() => $_has(1);
  @$pb.TagNumber(9)
  void clearFireBaseApiKey() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get userEmail => $_getSZ(2);
  @$pb.TagNumber(10)
  set userEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserEmail() => $_has(2);
  @$pb.TagNumber(10)
  void clearUserEmail() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get userPassword => $_getSZ(3);
  @$pb.TagNumber(11)
  set userPassword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasUserPassword() => $_has(3);
  @$pb.TagNumber(11)
  void clearUserPassword() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get homeId => $_getSZ(4);
  @$pb.TagNumber(12)
  set homeId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasHomeId() => $_has(4);
  @$pb.TagNumber(12)
  void clearHomeId() => clearField(12);
}

class DeviceTypesActions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceTypesActions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartConnection'), createEmptyInstance: create)
    ..e<DeviceTypes>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceType', $pb.PbFieldType.OE, protoName: 'deviceType', defaultOrMaker: DeviceTypes.typeNotSupported, valueOf: DeviceTypes.valueOf, enumValues: DeviceTypes.values)
    ..e<DeviceActions>(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceAction', $pb.PbFieldType.OE, protoName: 'deviceAction', defaultOrMaker: DeviceActions.actionNotSupported, valueOf: DeviceActions.valueOf, enumValues: DeviceActions.values)
    ..e<DeviceStateGRPC>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceStateGRPC', $pb.PbFieldType.OE, protoName: 'deviceStateGRPC', defaultOrMaker: DeviceStateGRPC.stateNotSupported, valueOf: DeviceStateGRPC.valueOf, enumValues: DeviceStateGRPC.values)
    ..hasRequiredFields = false
  ;

  DeviceTypesActions._() : super();
  factory DeviceTypesActions({
    DeviceTypes? deviceType,
    DeviceActions? deviceAction,
    DeviceStateGRPC? deviceStateGRPC,
  }) {
    final _result = create();
    if (deviceType != null) {
      _result.deviceType = deviceType;
    }
    if (deviceAction != null) {
      _result.deviceAction = deviceAction;
    }
    if (deviceStateGRPC != null) {
      _result.deviceStateGRPC = deviceStateGRPC;
    }
    return _result;
  }
  factory DeviceTypesActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceTypesActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceTypesActions clone() => DeviceTypesActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceTypesActions copyWith(void Function(DeviceTypesActions) updates) => super.copyWith((message) => updates(message as DeviceTypesActions)) as DeviceTypesActions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceTypesActions create() => DeviceTypesActions._();
  DeviceTypesActions createEmptyInstance() => create();
  static $pb.PbList<DeviceTypesActions> createRepeated() => $pb.PbList<DeviceTypesActions>();
  @$core.pragma('dart2js:noInline')
  static DeviceTypesActions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceTypesActions>(create);
  static DeviceTypesActions? _defaultInstance;

  @$pb.TagNumber(35)
  DeviceTypes get deviceType => $_getN(0);
  @$pb.TagNumber(35)
  set deviceType(DeviceTypes v) { setField(35, v); }
  @$pb.TagNumber(35)
  $core.bool hasDeviceType() => $_has(0);
  @$pb.TagNumber(35)
  void clearDeviceType() => clearField(35);

  @$pb.TagNumber(36)
  DeviceActions get deviceAction => $_getN(1);
  @$pb.TagNumber(36)
  set deviceAction(DeviceActions v) { setField(36, v); }
  @$pb.TagNumber(36)
  $core.bool hasDeviceAction() => $_has(1);
  @$pb.TagNumber(36)
  void clearDeviceAction() => clearField(36);

  @$pb.TagNumber(37)
  DeviceStateGRPC get deviceStateGRPC => $_getN(2);
  @$pb.TagNumber(37)
  set deviceStateGRPC(DeviceStateGRPC v) { setField(37, v); }
  @$pb.TagNumber(37)
  $core.bool hasDeviceStateGRPC() => $_has(2);
  @$pb.TagNumber(37)
  void clearDeviceStateGRPC() => clearField(37);
}

