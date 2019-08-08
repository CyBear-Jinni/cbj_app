///
//  Generated code. Do not modify.
//  source: SmartConnection.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class SmartDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmartDevice', package: const $pb.PackageName('SmartConnection'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  SmartDevice._() : super();
  factory SmartDevice() => create();
  factory SmartDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SmartDevice clone() => SmartDevice()..mergeFromMessage(this);
  SmartDevice copyWith(void Function(SmartDevice) updates) => super.copyWith((message) => updates(message as SmartDevice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartDevice create() => SmartDevice._();
  SmartDevice createEmptyInstance() => create();
  static $pb.PbList<SmartDevice> createRepeated() => $pb.PbList<SmartDevice>();
  static SmartDevice getDefault() => _defaultInstance ??= create()..freeze();
  static SmartDevice _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class SmartDeviceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmartDeviceStatus', package: const $pb.PackageName('SmartConnection'))
    ..aOB(2, 'onOffState')
    ..hasRequiredFields = false
  ;

  SmartDeviceStatus._() : super();
  factory SmartDeviceStatus() => create();
  factory SmartDeviceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartDeviceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SmartDeviceStatus clone() => SmartDeviceStatus()..mergeFromMessage(this);
  SmartDeviceStatus copyWith(void Function(SmartDeviceStatus) updates) => super.copyWith((message) => updates(message as SmartDeviceStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartDeviceStatus create() => SmartDeviceStatus._();
  SmartDeviceStatus createEmptyInstance() => create();
  static $pb.PbList<SmartDeviceStatus> createRepeated() => $pb.PbList<SmartDeviceStatus>();
  static SmartDeviceStatus getDefault() => _defaultInstance ??= create()..freeze();
  static SmartDeviceStatus _defaultInstance;

  $core.bool get onOffState => $_get(0, false);
  set onOffState($core.bool v) { $_setBool(0, v); }
  $core.bool hasOnOffState() => $_has(0);
  void clearOnOffState() => clearField(2);
}

