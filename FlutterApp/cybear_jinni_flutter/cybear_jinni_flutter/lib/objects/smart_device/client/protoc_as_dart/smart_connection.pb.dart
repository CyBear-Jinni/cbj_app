///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SmartDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmartDevice',
      package: const $pb.PackageName('SmartConnection'),
      createEmptyInstance: create)
    ..aOS(1, 'uuid')
    ..aOS(2, 'name')
    ..aOS(3, 'deviceType', protoName: 'deviceType')
    ..hasRequiredFields = false;

  SmartDevice._() : super();

  factory SmartDevice() => create();

  factory SmartDevice.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory SmartDevice.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  SmartDevice clone() => SmartDevice()..mergeFromMessage(this);

  SmartDevice copyWith(void Function(SmartDevice) updates) =>
      super.copyWith((message) => updates(message as SmartDevice));

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmartDevice create() => SmartDevice._();

  SmartDevice createEmptyInstance() => create();

  static $pb.PbList<SmartDevice> createRepeated() => $pb.PbList<SmartDevice>();

  @$core.pragma('dart2js:noInline')
  static SmartDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmartDevice>(create);
  static SmartDevice _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);

  @$pb.TagNumber(1)
  set uuid($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);

  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);

  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceType => $_getSZ(2);

  @$pb.TagNumber(3)
  set deviceType($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDeviceType() => $_has(2);

  @$pb.TagNumber(3)
  void clearDeviceType() => clearField(3);
}

class SmartDeviceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'SmartDeviceStatus', package: const $pb.PackageName('SmartConnection'),
      createEmptyInstance: create)
    ..aOB(4, 'onOffState', protoName: 'onOffState')
    ..hasRequiredFields = false
  ;

  SmartDeviceStatus._() : super();

  factory SmartDeviceStatus() => create();

  factory SmartDeviceStatus.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()
        ..mergeFromBuffer(i, r);

  factory SmartDeviceStatus.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()
        ..mergeFromJson(i, r);

  SmartDeviceStatus clone() =>
      SmartDeviceStatus()
        ..mergeFromMessage(this);

  SmartDeviceStatus copyWith(void Function(SmartDeviceStatus) updates) =>
      super.copyWith((message) => updates(message as SmartDeviceStatus));

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmartDeviceStatus create() => SmartDeviceStatus._();

  SmartDeviceStatus createEmptyInstance() => create();

  static $pb.PbList<SmartDeviceStatus> createRepeated() =>
      $pb.PbList<SmartDeviceStatus>();

  @$core.pragma('dart2js:noInline')
  static SmartDeviceStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmartDeviceStatus>(create);
  static SmartDeviceStatus _defaultInstance;

  @$pb.TagNumber(4)
  $core.bool get onOffState => $_getBF(0);

  @$pb.TagNumber(4)
  set onOffState($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOnOffState() => $_has(0);

  @$pb.TagNumber(4)
  void clearOnOffState() => clearField(4);
}

class CommendStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CommendStatus', package: const $pb.PackageName('SmartConnection'),
      createEmptyInstance: create)
    ..aOB(5, 'success')
    ..hasRequiredFields = false
  ;

  CommendStatus._() : super();

  factory CommendStatus() => create();

  factory CommendStatus.fromBuffer($core.List<$core.int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()
        ..mergeFromBuffer(i, r);

  factory CommendStatus.fromJson($core.String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()
        ..mergeFromJson(i, r);

  CommendStatus clone() =>
      CommendStatus()
        ..mergeFromMessage(this);

  CommendStatus copyWith(void Function(CommendStatus) updates) =>
      super.copyWith((message) => updates(message as CommendStatus));

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommendStatus create() => CommendStatus._();

  CommendStatus createEmptyInstance() => create();

  static $pb.PbList<CommendStatus> createRepeated() =>
      $pb.PbList<CommendStatus>();

  @$core.pragma('dart2js:noInline')
  static CommendStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommendStatus>(create);
  static CommendStatus _defaultInstance;

  @$pb.TagNumber(5)
  $core.bool get success => $_getBF(0);

  @$pb.TagNumber(5)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSuccess() => $_has(0);

  @$pb.TagNumber(5)
  void clearSuccess() => clearField(5);
}

