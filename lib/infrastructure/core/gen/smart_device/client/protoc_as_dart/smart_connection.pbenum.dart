///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DeviceTypes extends $pb.ProtobufEnum {
  static const DeviceTypes typeNotSupported = DeviceTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'typeNotSupported');
  static const DeviceTypes light = DeviceTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'light');
  static const DeviceTypes blinds = DeviceTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'blinds');
  static const DeviceTypes boiler = DeviceTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'boiler');
  static const DeviceTypes button = DeviceTypes._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'button');

  static const $core.List<DeviceTypes> values = <DeviceTypes> [
    typeNotSupported,
    light,
    blinds,
    boiler,
    button,
  ];

  static final $core.Map<$core.int, DeviceTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceTypes? valueOf($core.int value) => _byValue[value];

  const DeviceTypes._($core.int v, $core.String n) : super(v, n);
}

class DeviceActions extends $pb.ProtobufEnum {
  static const DeviceActions actionNotSupported = DeviceActions._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'actionNotSupported');
  static const DeviceActions on = DeviceActions._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'on');
  static const DeviceActions off = DeviceActions._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'off');
  static const DeviceActions moveUp = DeviceActions._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'moveUp');
  static const DeviceActions stop = DeviceActions._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stop');
  static const DeviceActions moveDown = DeviceActions._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'moveDown');
  static const DeviceActions pressed = DeviceActions._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pressed');
  static const DeviceActions longPress = DeviceActions._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'longPress');
  static const DeviceActions doubleTap = DeviceActions._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'doubleTap');

  static const $core.List<DeviceActions> values = <DeviceActions> [
    actionNotSupported,
    on,
    off,
    moveUp,
    stop,
    moveDown,
    pressed,
    longPress,
    doubleTap,
  ];

  static final $core.Map<$core.int, DeviceActions> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceActions? valueOf($core.int value) => _byValue[value];

  const DeviceActions._($core.int v, $core.String n) : super(v, n);
}

class DeviceStateGRPC extends $pb.ProtobufEnum {
  static const DeviceStateGRPC stateNotSupported = DeviceStateGRPC._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stateNotSupported');
  static const DeviceStateGRPC cancelStateInProcess = DeviceStateGRPC._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cancelStateInProcess');
  static const DeviceStateGRPC ack = DeviceStateGRPC._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ack');
  static const DeviceStateGRPC newStateFailed = DeviceStateGRPC._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'newStateFailed');
  static const DeviceStateGRPC waitingInFirebase = DeviceStateGRPC._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'waitingInFirebase');
  static const DeviceStateGRPC waitingInComp = DeviceStateGRPC._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'waitingInComp');

  static const $core.List<DeviceStateGRPC> values = <DeviceStateGRPC> [
    stateNotSupported,
    cancelStateInProcess,
    ack,
    newStateFailed,
    waitingInFirebase,
    waitingInComp,
  ];

  static final $core.Map<$core.int, DeviceStateGRPC> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceStateGRPC? valueOf($core.int value) => _byValue[value];

  const DeviceStateGRPC._($core.int v, $core.String n) : super(v, n);
}

