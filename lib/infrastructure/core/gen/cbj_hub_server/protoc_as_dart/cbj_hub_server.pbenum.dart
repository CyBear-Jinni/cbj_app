///
//  Generated code. Do not modify.
//  source: cbj_hub_server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SendingType extends $pb.ProtobufEnum {
  static const SendingType undefinedType = SendingType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'undefinedType');
  static const SendingType stringType = SendingType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stringType');
  static const SendingType partialEntityType = SendingType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'partialEntityType');
  static const SendingType entityType = SendingType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'entityType');
  static const SendingType mqttMassageType = SendingType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'mqttMassageType');
  static const SendingType sceneType = SendingType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sceneType');
  static const SendingType scheduleType = SendingType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'scheduleType');
  static const SendingType routineType = SendingType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'routineType');
  static const SendingType bindingsType = SendingType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'bindingsType');
  static const SendingType vendorLoginType = SendingType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'vendorLoginType');
  static const SendingType firstConnection = SendingType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'firstConnection');
  static const SendingType remotePipesInformation = SendingType._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'remotePipesInformation');
  static const SendingType getHubEntityInfo = SendingType._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'getHubEntityInfo');
  static const SendingType responseHubEntityInfo = SendingType._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'responseHubEntityInfo');
  static const SendingType roomType = SendingType._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'roomType');
  static const SendingType location = SendingType._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'location');

  static const $core.List<SendingType> values = <SendingType> [
    undefinedType,
    stringType,
    partialEntityType,
    entityType,
    mqttMassageType,
    sceneType,
    scheduleType,
    routineType,
    bindingsType,
    vendorLoginType,
    firstConnection,
    remotePipesInformation,
    getHubEntityInfo,
    responseHubEntityInfo,
    roomType,
    location,
  ];

  static final $core.Map<$core.int, SendingType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendingType? valueOf($core.int value) => _byValue[value];

  const SendingType._($core.int v, $core.String n) : super(v, n);
}

class EntityStateGRPC extends $pb.ProtobufEnum {
  static const EntityStateGRPC stateNotSupported = EntityStateGRPC._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stateNotSupported');
  static const EntityStateGRPC cancelStateInProcess = EntityStateGRPC._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cancelStateInProcess');
  static const EntityStateGRPC ack = EntityStateGRPC._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ack');
  static const EntityStateGRPC newStateFailed = EntityStateGRPC._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'newStateFailed');
  static const EntityStateGRPC waitingInCloud = EntityStateGRPC._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'waitingInCloud');
  static const EntityStateGRPC waitingInComp = EntityStateGRPC._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'waitingInComp');
  static const EntityStateGRPC noEntitiesToTransfer = EntityStateGRPC._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'noEntitiesToTransfer');
  static const EntityStateGRPC pingNow = EntityStateGRPC._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pingNow');
  static const EntityStateGRPC addingNewScene = EntityStateGRPC._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'addingNewScene');
  static const EntityStateGRPC addingNewRoutine = EntityStateGRPC._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'addingNewRoutine');
  static const EntityStateGRPC addingNewBinding = EntityStateGRPC._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'addingNewBinding');
  static const EntityStateGRPC updateHubEntityPropertiesFromRealEntity = EntityStateGRPC._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'updateHubEntityPropertiesFromRealEntity');

  static const $core.List<EntityStateGRPC> values = <EntityStateGRPC> [
    stateNotSupported,
    cancelStateInProcess,
    ack,
    newStateFailed,
    waitingInCloud,
    waitingInComp,
    noEntitiesToTransfer,
    pingNow,
    addingNewScene,
    addingNewRoutine,
    addingNewBinding,
    updateHubEntityPropertiesFromRealEntity,
  ];

  static final $core.Map<$core.int, EntityStateGRPC> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EntityStateGRPC? valueOf($core.int value) => _byValue[value];

  const EntityStateGRPC._($core.int v, $core.String n) : super(v, n);
}

class VendorsAndServices extends $pb.ProtobufEnum {
  static const VendorsAndServices vendorsAndServicesNotSupported = VendorsAndServices._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'vendorsAndServicesNotSupported');
  static const VendorsAndServices espHome = VendorsAndServices._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'espHome');
  static const VendorsAndServices switcherSmartHome = VendorsAndServices._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'switcherSmartHome');
  static const VendorsAndServices tasmota = VendorsAndServices._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'tasmota');
  static const VendorsAndServices yeelight = VendorsAndServices._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'yeelight');
  static const VendorsAndServices google = VendorsAndServices._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'google');
  static const VendorsAndServices miHome = VendorsAndServices._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'miHome');
  static const VendorsAndServices lifx = VendorsAndServices._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'lifx');
  static const VendorsAndServices tuyaSmart = VendorsAndServices._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'tuyaSmart');
  static const VendorsAndServices smartLife = VendorsAndServices._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartLife');
  static const VendorsAndServices jinvooSmart = VendorsAndServices._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'jinvooSmart');
  static const VendorsAndServices shelly = VendorsAndServices._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'shelly');
  static const VendorsAndServices wink = VendorsAndServices._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'wink');
  static const VendorsAndServices ikea = VendorsAndServices._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ikea');
  static const VendorsAndServices sonoffDiy = VendorsAndServices._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sonoffDiy');
  static const VendorsAndServices philipsHue = VendorsAndServices._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'philipsHue');
  static const VendorsAndServices lg = VendorsAndServices._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'lg');
  static const VendorsAndServices spotify = VendorsAndServices._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'spotify');
  static const VendorsAndServices homeAssistant = VendorsAndServices._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'homeAssistant');
  static const VendorsAndServices hp = VendorsAndServices._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'hp');
  static const VendorsAndServices yeelink = VendorsAndServices._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'yeelink');
  static const VendorsAndServices xiaomi = VendorsAndServices._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'xiaomi');
  static const VendorsAndServices sonoffEweLink = VendorsAndServices._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sonoffEweLink');
  static const VendorsAndServices cbjDeviceSmartEntity = VendorsAndServices._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cbjDeviceSmartEntity');
  static const VendorsAndServices wiz = VendorsAndServices._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'wiz');
  static const VendorsAndServices switchBot = VendorsAndServices._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'switchBot');
  static const VendorsAndServices somfy = VendorsAndServices._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'somfy');
  static const VendorsAndServices sensibo = VendorsAndServices._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sensibo');
  static const VendorsAndServices aqara = VendorsAndServices._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'aqara');
  static const VendorsAndServices matter = VendorsAndServices._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'matter');
  static const VendorsAndServices nest = VendorsAndServices._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'nest');
  static const VendorsAndServices uniFi = VendorsAndServices._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'uniFi');
  static const VendorsAndServices ring = VendorsAndServices._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ring');
  static const VendorsAndServices myQ = VendorsAndServices._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'myQ');
  static const VendorsAndServices wemo = VendorsAndServices._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'wemo');
  static const VendorsAndServices tpLink = VendorsAndServices._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'tpLink');
  static const VendorsAndServices nuki = VendorsAndServices._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'nuki');
  static const VendorsAndServices homebridge = VendorsAndServices._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'homebridge');
  static const VendorsAndServices homeKit = VendorsAndServices._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'homeKit');
  static const VendorsAndServices twinkly = VendorsAndServices._(39, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'twinkly');
  static const VendorsAndServices samsung = VendorsAndServices._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'samsung');
  static const VendorsAndServices tizen = VendorsAndServices._(41, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'tizen');
  static const VendorsAndServices zigbee = VendorsAndServices._(42, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'zigbee');
  static const VendorsAndServices zWave = VendorsAndServices._(43, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'zWave');
  static const VendorsAndServices ffmpeg = VendorsAndServices._(44, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ffmpeg');
  static const VendorsAndServices lightwaveRf = VendorsAndServices._(45, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'lightwaveRf');
  static const VendorsAndServices cololight = VendorsAndServices._(46, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cololight');
  static const VendorsAndServices broadlink = VendorsAndServices._(47, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'broadlink');
  static const VendorsAndServices switchBee = VendorsAndServices._(48, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'switchBee');
  static const VendorsAndServices mycroft = VendorsAndServices._(49, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'mycroft');
  static const VendorsAndServices xiaomiMi = VendorsAndServices._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'xiaomiMi');
  static const VendorsAndServices cyBearJinniAppSmartEntity = VendorsAndServices._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cyBearJinniAppSmartEntity');
  static const VendorsAndServices securityBear = VendorsAndServices._(52, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'securityBear');
  static const VendorsAndServices jinniAssistant = VendorsAndServices._(53, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'jinniAssistant');

  static const $core.List<VendorsAndServices> values = <VendorsAndServices> [
    vendorsAndServicesNotSupported,
    espHome,
    switcherSmartHome,
    tasmota,
    yeelight,
    google,
    miHome,
    lifx,
    tuyaSmart,
    smartLife,
    jinvooSmart,
    shelly,
    wink,
    ikea,
    sonoffDiy,
    philipsHue,
    lg,
    spotify,
    homeAssistant,
    hp,
    yeelink,
    xiaomi,
    sonoffEweLink,
    cbjDeviceSmartEntity,
    wiz,
    switchBot,
    somfy,
    sensibo,
    aqara,
    matter,
    nest,
    uniFi,
    ring,
    myQ,
    wemo,
    tpLink,
    nuki,
    homebridge,
    homeKit,
    twinkly,
    samsung,
    tizen,
    zigbee,
    zWave,
    ffmpeg,
    lightwaveRf,
    cololight,
    broadlink,
    switchBee,
    mycroft,
    xiaomiMi,
    cyBearJinniAppSmartEntity,
    securityBear,
    jinniAssistant,
  ];

  static final $core.Map<$core.int, VendorsAndServices> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VendorsAndServices? valueOf($core.int value) => _byValue[value];

  const VendorsAndServices._($core.int v, $core.String n) : super(v, n);
}

class EntityTypes extends $pb.ProtobufEnum {
  static const EntityTypes smartTypeNotSupported = EntityTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartTypeNotSupported');
  static const EntityTypes light = EntityTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'light');
  static const EntityTypes blinds = EntityTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'blinds');
  static const EntityTypes boiler = EntityTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'boiler');
  static const EntityTypes button = EntityTypes._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'button');
  static const EntityTypes buttonWithLight = EntityTypes._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'buttonWithLight');
  static const EntityTypes hub = EntityTypes._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'hub');
  static const EntityTypes phoneApp = EntityTypes._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'phoneApp');
  static const EntityTypes computerApp = EntityTypes._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'computerApp');
  static const EntityTypes browserApp = EntityTypes._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'browserApp');
  static const EntityTypes switch_ = EntityTypes._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'switch');
  static const EntityTypes dimmableLight = EntityTypes._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'dimmableLight');
  static const EntityTypes cctLight = EntityTypes._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cctLight');
  static const EntityTypes rgbLights = EntityTypes._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'rgbLights');
  static const EntityTypes rgbwLights = EntityTypes._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'rgbwLights');
  static const EntityTypes rgbcctLights = EntityTypes._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'rgbcctLights');
  static const EntityTypes smartTV = EntityTypes._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartTV');
  static const EntityTypes smartSpeakers = EntityTypes._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartSpeakers');
  static const EntityTypes coffeeMachine = EntityTypes._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'coffeeMachine');
  static const EntityTypes kettle = EntityTypes._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'kettle');
  static const EntityTypes teapot = EntityTypes._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'teapot');
  static const EntityTypes washingMachine = EntityTypes._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'washingMachine');
  static const EntityTypes dishwasher = EntityTypes._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'dishwasher');
  static const EntityTypes toaster = EntityTypes._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'toaster');
  static const EntityTypes vacuumCleaner = EntityTypes._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'vacuumCleaner');
  static const EntityTypes refrigerator = EntityTypes._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'refrigerator');
  static const EntityTypes bed = EntityTypes._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'bed');
  static const EntityTypes oven = EntityTypes._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'oven');
  static const EntityTypes AirConditioner = EntityTypes._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AirConditioner');
  static const EntityTypes smartWatch = EntityTypes._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartWatch');
  static const EntityTypes smartWaterBottle = EntityTypes._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartWaterBottle');
  static const EntityTypes microphone = EntityTypes._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'microphone');
  static const EntityTypes securityCamera = EntityTypes._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'securityCamera');
  static const EntityTypes babyMonitor = EntityTypes._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'babyMonitor');
  static const EntityTypes motionSensor = EntityTypes._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'motionSensor');
  static const EntityTypes temperatureSensor = EntityTypes._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'temperatureSensor');
  static const EntityTypes humiditySensor = EntityTypes._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'humiditySensor');
  static const EntityTypes lightSensor = EntityTypes._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'lightSensor');
  static const EntityTypes soundSensor = EntityTypes._(39, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'soundSensor');
  static const EntityTypes smokeSensor = EntityTypes._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smokeSensor');
  static const EntityTypes smokeDetector = EntityTypes._(41, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smokeDetector');
  static const EntityTypes oxygenSensor = EntityTypes._(42, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'oxygenSensor');
  static const EntityTypes smartPlug = EntityTypes._(43, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartPlug');
  static const EntityTypes printer = EntityTypes._(44, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'printer');
  static const EntityTypes scanner = EntityTypes._(45, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'scanner');
  static const EntityTypes printerWithScanner = EntityTypes._(46, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'printerWithScanner');
  static const EntityTypes smartComputer = EntityTypes._(47, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'smartComputer');
  static const EntityTypes emptyEntity = EntityTypes._(48, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'emptyEntity');
  static const EntityTypes pingEntity = EntityTypes._(49, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pingEntity');
  static const EntityTypes routerEntity = EntityTypes._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'routerEntity');
  static const EntityTypes playerEntity = EntityTypes._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'playerEntity');
  static const EntityTypes voiceAssistant = EntityTypes._(52, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'voiceAssistant');

  static const $core.List<EntityTypes> values = <EntityTypes> [
    smartTypeNotSupported,
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
    smartSpeakers,
    coffeeMachine,
    kettle,
    teapot,
    washingMachine,
    dishwasher,
    toaster,
    vacuumCleaner,
    refrigerator,
    bed,
    oven,
    AirConditioner,
    smartWatch,
    smartWaterBottle,
    microphone,
    securityCamera,
    babyMonitor,
    motionSensor,
    temperatureSensor,
    humiditySensor,
    lightSensor,
    soundSensor,
    smokeSensor,
    smokeDetector,
    oxygenSensor,
    smartPlug,
    printer,
    scanner,
    printerWithScanner,
    smartComputer,
    emptyEntity,
    pingEntity,
    routerEntity,
    playerEntity,
    voiceAssistant,
  ];

  static final $core.Map<$core.int, EntityTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EntityTypes? valueOf($core.int value) => _byValue[value];

  const EntityTypes._($core.int v, $core.String n) : super(v, n);
}

class EntityActions extends $pb.ProtobufEnum {
  static const EntityActions actionNotSupported = EntityActions._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'actionNotSupported');
  static const EntityActions on = EntityActions._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'on');
  static const EntityActions off = EntityActions._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'off');
  static const EntityActions moveUp = EntityActions._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'moveUp');
  static const EntityActions stop = EntityActions._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stop');
  static const EntityActions moveDown = EntityActions._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'moveDown');
  static const EntityActions pressed = EntityActions._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pressed');
  static const EntityActions longPress = EntityActions._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'longPress');
  static const EntityActions doubleTap = EntityActions._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'doubleTap');
  static const EntityActions position = EntityActions._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'position');
  static const EntityActions suspend = EntityActions._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'suspend');
  static const EntityActions shutdown = EntityActions._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'shutdown');
  static const EntityActions itIsFalse = EntityActions._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'itIsFalse');
  static const EntityActions itIsTrue = EntityActions._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'itIsTrue');
  static const EntityActions pausePlay = EntityActions._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pausePlay');
  static const EntityActions changeVolume = EntityActions._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'changeVolume');
  static const EntityActions jump = EntityActions._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'jump');
  static const EntityActions skip = EntityActions._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'skip');
  static const EntityActions pause = EntityActions._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pause');
  static const EntityActions play = EntityActions._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'play');
  static const EntityActions volumeUp = EntityActions._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'volumeUp');
  static const EntityActions volumeDown = EntityActions._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'volumeDown');
  static const EntityActions skipForeword = EntityActions._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'skipForeword');
  static const EntityActions skipBackward = EntityActions._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'skipBackward');
  static const EntityActions skipNextVid = EntityActions._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'skipNextVid');
  static const EntityActions skipPreviousVid = EntityActions._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'skipPreviousVid');
  static const EntityActions open = EntityActions._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'open');
  static const EntityActions close = EntityActions._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'close');
  static const EntityActions changeTemperature = EntityActions._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'changeTemperature');
  static const EntityActions changeFanSpeed = EntityActions._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'changeFanSpeed');
  static const EntityActions changeMod = EntityActions._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'changeMod');

  static const $core.List<EntityActions> values = <EntityActions> [
    actionNotSupported,
    on,
    off,
    moveUp,
    stop,
    moveDown,
    pressed,
    longPress,
    doubleTap,
    position,
    suspend,
    shutdown,
    itIsFalse,
    itIsTrue,
    pausePlay,
    changeVolume,
    jump,
    skip,
    pause,
    play,
    volumeUp,
    volumeDown,
    skipForeword,
    skipBackward,
    skipNextVid,
    skipPreviousVid,
    open,
    close,
    changeTemperature,
    changeFanSpeed,
    changeMod,
  ];

  static final $core.Map<$core.int, EntityActions> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EntityActions? valueOf($core.int value) => _byValue[value];

  const EntityActions._($core.int v, $core.String n) : super(v, n);
}

class WhenToExecute extends $pb.ProtobufEnum {
  static const WhenToExecute undefined = WhenToExecute._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'undefined');
  static const WhenToExecute onOddNumberPress = WhenToExecute._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'onOddNumberPress');
  static const WhenToExecute evenNumberPress = WhenToExecute._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'evenNumberPress');
  static const WhenToExecute betweenSelectedTime = WhenToExecute._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'betweenSelectedTime');
  static const WhenToExecute doNotBetweenSelectedTime = WhenToExecute._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'doNotBetweenSelectedTime');
  static const WhenToExecute allTheTime = WhenToExecute._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'allTheTime');
  static const WhenToExecute never = WhenToExecute._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'never');
  static const WhenToExecute onceNow = WhenToExecute._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'onceNow');
  static const WhenToExecute onceInSelectedTime = WhenToExecute._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'onceInSelectedTime');
  static const WhenToExecute onlyIfEntityListAreInActionListState = WhenToExecute._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'onlyIfEntityListAreInActionListState');
  static const WhenToExecute atHome = WhenToExecute._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'atHome');
  static const WhenToExecute outOfHome = WhenToExecute._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'outOfHome');
  static const WhenToExecute atASpecificTime = WhenToExecute._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'atASpecificTime');

  static const $core.List<WhenToExecute> values = <WhenToExecute> [
    undefined,
    onOddNumberPress,
    evenNumberPress,
    betweenSelectedTime,
    doNotBetweenSelectedTime,
    allTheTime,
    never,
    onceNow,
    onceInSelectedTime,
    onlyIfEntityListAreInActionListState,
    atHome,
    outOfHome,
    atASpecificTime,
  ];

  static final $core.Map<$core.int, WhenToExecute> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WhenToExecute? valueOf($core.int value) => _byValue[value];

  const WhenToExecute._($core.int v, $core.String n) : super(v, n);
}

class AreaPurposesTypes extends $pb.ProtobufEnum {
  static const AreaPurposesTypes bedroom = AreaPurposesTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'bedroom');
  static const AreaPurposesTypes studyRoom = AreaPurposesTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'studyRoom');
  static const AreaPurposesTypes workRoom = AreaPurposesTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workRoom');
  static const AreaPurposesTypes tvRoom = AreaPurposesTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'tvRoom');
  static const AreaPurposesTypes videoGames = AreaPurposesTypes._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'videoGames');
  static const AreaPurposesTypes livingRoom = AreaPurposesTypes._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'livingRoom');
  static const AreaPurposesTypes diningRoom = AreaPurposesTypes._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'diningRoom');
  static const AreaPurposesTypes kitchen = AreaPurposesTypes._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'kitchen');
  static const AreaPurposesTypes outside = AreaPurposesTypes._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'outside');
  static const AreaPurposesTypes outsidePrimary = AreaPurposesTypes._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'outsidePrimary');
  static const AreaPurposesTypes outsideNotPrimary = AreaPurposesTypes._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'outsideNotPrimary');
  static const AreaPurposesTypes toiletRoom = AreaPurposesTypes._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'toiletRoom');
  static const AreaPurposesTypes shower = AreaPurposesTypes._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'shower');
  static const AreaPurposesTypes trainingRoom = AreaPurposesTypes._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'trainingRoom');
  static const AreaPurposesTypes meditation = AreaPurposesTypes._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'meditation');
  static const AreaPurposesTypes romantic = AreaPurposesTypes._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'romantic');
  static const AreaPurposesTypes stairsInside = AreaPurposesTypes._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stairsInside');
  static const AreaPurposesTypes stairsOutside = AreaPurposesTypes._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'stairsOutside');
  static const AreaPurposesTypes childrenRoom = AreaPurposesTypes._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'childrenRoom');
  static const AreaPurposesTypes cinemaRoom = AreaPurposesTypes._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'cinemaRoom');
  static const AreaPurposesTypes boardGames = AreaPurposesTypes._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'boardGames');
  static const AreaPurposesTypes bathtub = AreaPurposesTypes._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'bathtub');
  static const AreaPurposesTypes laundryRoom = AreaPurposesTypes._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'laundryRoom');
  static const AreaPurposesTypes protectedSpace = AreaPurposesTypes._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'protectedSpace');
  static const AreaPurposesTypes safeRoom = AreaPurposesTypes._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'safeRoom');
  static const AreaPurposesTypes attic = AreaPurposesTypes._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'attic');
  static const AreaPurposesTypes holidayCabin = AreaPurposesTypes._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'holidayCabin');

  static const $core.List<AreaPurposesTypes> values = <AreaPurposesTypes> [
    bedroom,
    studyRoom,
    workRoom,
    tvRoom,
    videoGames,
    livingRoom,
    diningRoom,
    kitchen,
    outside,
    outsidePrimary,
    outsideNotPrimary,
    toiletRoom,
    shower,
    trainingRoom,
    meditation,
    romantic,
    stairsInside,
    stairsOutside,
    childrenRoom,
    cinemaRoom,
    boardGames,
    bathtub,
    laundryRoom,
    protectedSpace,
    safeRoom,
    attic,
    holidayCabin,
  ];

  static final $core.Map<$core.int, AreaPurposesTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AreaPurposesTypes? valueOf($core.int value) => _byValue[value];

  const AreaPurposesTypes._($core.int v, $core.String n) : super(v, n);
}

