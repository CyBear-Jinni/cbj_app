///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VendorsAndServices extends $pb.ProtobufEnum {
  static const VendorsAndServices vendorsAndServicesNotSupported =
      VendorsAndServices._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'vendorsAndServicesNotSupported');
  static const VendorsAndServices espHome = VendorsAndServices._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'espHome');
  static const VendorsAndServices switcherSmartHome = VendorsAndServices._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'switcherSmartHome');
  static const VendorsAndServices tasmota = VendorsAndServices._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'tasmota');
  static const VendorsAndServices yeelight = VendorsAndServices._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'yeelight');
  static const VendorsAndServices google = VendorsAndServices._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'google');
  static const VendorsAndServices miHome = VendorsAndServices._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'miHome');
  static const VendorsAndServices lifx = VendorsAndServices._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'lifx');
  static const VendorsAndServices tuyaSmart = VendorsAndServices._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'tuyaSmart');

  static const $core.List<VendorsAndServices> values = <VendorsAndServices>[
    vendorsAndServicesNotSupported,
    espHome,
    switcherSmartHome,
    tasmota,
    yeelight,
    google,
    miHome,
    lifx,
    tuyaSmart,
  ];

  static final $core.Map<$core.int, VendorsAndServices> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VendorsAndServices? valueOf($core.int value) => _byValue[value];

  const VendorsAndServices._($core.int v, $core.String n) : super(v, n);
}

class DeviceTypes extends $pb.ProtobufEnum {
  static const DeviceTypes typeNotSupported = DeviceTypes._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'typeNotSupported');
  static const DeviceTypes light = DeviceTypes._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'light');
  static const DeviceTypes blinds = DeviceTypes._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'blinds');
  static const DeviceTypes boiler = DeviceTypes._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'boiler');
  static const DeviceTypes button = DeviceTypes._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'button');
  static const DeviceTypes buttonWithLight = DeviceTypes._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'buttonWithLight');
  static const DeviceTypes hub = DeviceTypes._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'hub');
  static const DeviceTypes phoneApp = DeviceTypes._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'phoneApp');
  static const DeviceTypes computerApp = DeviceTypes._(
      9,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'computerApp');
  static const DeviceTypes browserApp = DeviceTypes._(
      10,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'browserApp');
  static const DeviceTypes switch_ = DeviceTypes._(
      11,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'switch');
  static const DeviceTypes dimmableLight = DeviceTypes._(
      12,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'dimmableLight');
  static const DeviceTypes cctLight = DeviceTypes._(
      13,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'cctLight');
  static const DeviceTypes rgbLights = DeviceTypes._(
      14,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'rgbLights');
  static const DeviceTypes rgbwLights = DeviceTypes._(
      15,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'rgbwLights');
  static const DeviceTypes rgbcctLights = DeviceTypes._(
      16,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'rgbcctLights');
  static const DeviceTypes smartTV = DeviceTypes._(
      17,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'smartTV');

  static const $core.List<DeviceTypes> values = <DeviceTypes>[
    typeNotSupported,
    light,
    blinds,
    boiler,
    button,
    buttonWithLight,
    hub,
    phoneApp,
    computerApp,
    browserApp,
    switch_,
    dimmableLight,
    cctLight,
    rgbLights,
    rgbwLights,
    rgbcctLights,
    smartTV,
  ];

  static final $core.Map<$core.int, DeviceTypes> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DeviceTypes? valueOf($core.int value) => _byValue[value];

  const DeviceTypes._($core.int v, $core.String n) : super(v, n);
}

class DeviceActions extends $pb.ProtobufEnum {
  static const DeviceActions actionNotSupported = DeviceActions._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'actionNotSupported');
  static const DeviceActions on = DeviceActions._(1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'on');
  static const DeviceActions off = DeviceActions._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'off');
  static const DeviceActions moveUp = DeviceActions._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'moveUp');
  static const DeviceActions stop = DeviceActions._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'stop');
  static const DeviceActions moveDown = DeviceActions._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'moveDown');
  static const DeviceActions pressed = DeviceActions._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'pressed');
  static const DeviceActions longPress = DeviceActions._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'longPress');
  static const DeviceActions doubleTap = DeviceActions._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'doubleTap');

  static const $core.List<DeviceActions> values = <DeviceActions>[
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

  static final $core.Map<$core.int, DeviceActions> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DeviceActions? valueOf($core.int value) => _byValue[value];

  const DeviceActions._($core.int v, $core.String n) : super(v, n);
}

class WhenToExecute extends $pb.ProtobufEnum {
  static const WhenToExecute undefined = WhenToExecute._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'undefined');
  static const WhenToExecute onOddNumberPress = WhenToExecute._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'onOddNumberPress');
  static const WhenToExecute evenNumberPress = WhenToExecute._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'evenNumberPress');
  static const WhenToExecute betweenSelectedTime = WhenToExecute._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'betweenSelectedTime');
  static const WhenToExecute doNotBetweenSelectedTime = WhenToExecute._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'doNotBetweenSelectedTime');
  static const WhenToExecute allTheTime = WhenToExecute._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'allTheTime');
  static const WhenToExecute never = WhenToExecute._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'never');
  static const WhenToExecute onceNow = WhenToExecute._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'onceNow');
  static const WhenToExecute onceInSelectedTime = WhenToExecute._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'onceInSelectedTime');
  static const WhenToExecute onlyIfDeviceListIsAreInActionListState =
      WhenToExecute._(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'onlyIfDeviceListIsAreInActionListState');
  static const WhenToExecute atHome = WhenToExecute._(
      10,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'atHome');
  static const WhenToExecute outOfHome = WhenToExecute._(
      11,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'outOfHome');

  static const $core.List<WhenToExecute> values = <WhenToExecute>[
    undefined,
    onOddNumberPress,
    evenNumberPress,
    betweenSelectedTime,
    doNotBetweenSelectedTime,
    allTheTime,
    never,
    onceNow,
    onceInSelectedTime,
    onlyIfDeviceListIsAreInActionListState,
    atHome,
    outOfHome,
  ];

  static final $core.Map<$core.int, WhenToExecute> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WhenToExecute? valueOf($core.int value) => _byValue[value];

  const WhenToExecute._($core.int v, $core.String n) : super(v, n);
}

class DeviceStateGRPC extends $pb.ProtobufEnum {
  static const DeviceStateGRPC stateNotSupported = DeviceStateGRPC._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'stateNotSupported');
  static const DeviceStateGRPC cancelStateInProcess = DeviceStateGRPC._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'cancelStateInProcess');
  static const DeviceStateGRPC ack = DeviceStateGRPC._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'ack');
  static const DeviceStateGRPC newStateFailed = DeviceStateGRPC._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'newStateFailed');
  static const DeviceStateGRPC waitingInFirebase = DeviceStateGRPC._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'waitingInFirebase');
  static const DeviceStateGRPC waitingInComp = DeviceStateGRPC._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'waitingInComp');

  static const $core.List<DeviceStateGRPC> values = <DeviceStateGRPC>[
    stateNotSupported,
    cancelStateInProcess,
    ack,
    newStateFailed,
    waitingInFirebase,
    waitingInComp,
  ];

  static final $core.Map<$core.int, DeviceStateGRPC> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DeviceStateGRPC? valueOf($core.int value) => _byValue[value];

  const DeviceStateGRPC._($core.int v, $core.String n) : super(v, n);
}

class SendingType extends $pb.ProtobufEnum {

  static const SendingType undefinedType = SendingType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'undefinedType');
  static const SendingType stringType = SendingType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stringType');
  static const SendingType partialDeviceType = SendingType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'partialDeviceType');
  static const SendingType deviceType = SendingType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'deviceType');
  static const SendingType mqttMassageType = SendingType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'mqttMassageType');
  static const SendingType sceneType = SendingType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sceneType');
  static const SendingType scheduleType = SendingType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'scheduleType');
  static const SendingType routineType = SendingType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'routineType');
  static const SendingType bindingsType = SendingType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'bindingsType');
  static const SendingType vendorLoginType = SendingType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'vendorLoginType');
  static const SendingType firstConnection = SendingType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'firstConnection');

  static const $core.List<SendingType> values = <SendingType> [
    undefinedType,
    stringType,
    partialDeviceType,
    deviceType,
    mqttMassageType,
    sceneType,
    scheduleType,
    routineType,
    bindingsType,
    vendorLoginType,
    firstConnection,
  ];

  static final $core.Map<$core.int, SendingType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SendingType? valueOf($core.int value) => _byValue[value];

  const SendingType._($core.int v, $core.String n) : super(v, n);
}
