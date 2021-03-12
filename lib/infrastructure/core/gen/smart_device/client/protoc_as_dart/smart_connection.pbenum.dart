///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DeviceTypes extends $pb.ProtobufEnum {
  static const DeviceTypes TypeNotSupported = DeviceTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TypeNotSupported');
  static const DeviceTypes Light = DeviceTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Light');
  static const DeviceTypes Blinds = DeviceTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Blinds');
  static const DeviceTypes Thermostat = DeviceTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Thermostat');

  static const $core.List<DeviceTypes> values = <DeviceTypes> [
    TypeNotSupported,
    Light,
    Blinds,
    Thermostat,
  ];

  static final $core.Map<$core.int, DeviceTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceTypes valueOf($core.int value) => _byValue[value];

  const DeviceTypes._($core.int v, $core.String n) : super(v, n);
}

class DeviceActions extends $pb.ProtobufEnum {
  static const DeviceActions ActionNotSupported = DeviceActions._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ActionNotSupported');
  static const DeviceActions On = DeviceActions._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'On');
  static const DeviceActions Off = DeviceActions._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Off');
  static const DeviceActions MoveUP = DeviceActions._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MoveUP');
  static const DeviceActions Stop = DeviceActions._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Stop');
  static const DeviceActions MoveDon = DeviceActions._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MoveDon');

  static const $core.List<DeviceActions> values = <DeviceActions> [
    ActionNotSupported,
    On,
    Off,
    MoveUP,
    Stop,
    MoveDon,
  ];

  static final $core.Map<$core.int, DeviceActions> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceActions valueOf($core.int value) => _byValue[value];

  const DeviceActions._($core.int v, $core.String n) : super(v, n);
}

class DeviceStateGRPC extends $pb.ProtobufEnum {
  static const DeviceStateGRPC StateNotSupported = DeviceStateGRPC._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'StateNotSupported');
  static const DeviceStateGRPC cancelStateInProcess = DeviceStateGRPC._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cancelStateInProcess');
  static const DeviceStateGRPC ack = DeviceStateGRPC._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ack');
  static const DeviceStateGRPC newStateFailed = DeviceStateGRPC._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'newStateFailed');
  static const DeviceStateGRPC waitingInFirebase = DeviceStateGRPC._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'waitingInFirebase');
  static const DeviceStateGRPC waitingInComp = DeviceStateGRPC._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'waitingInComp');

  static const $core.List<DeviceStateGRPC> values = <DeviceStateGRPC> [
    StateNotSupported,
    cancelStateInProcess,
    ack,
    newStateFailed,
    waitingInFirebase,
    waitingInComp,
  ];

  static final $core.Map<$core.int, DeviceStateGRPC> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceStateGRPC valueOf($core.int value) => _byValue[value];

  const DeviceStateGRPC._($core.int v, $core.String n) : super(v, n);
}

