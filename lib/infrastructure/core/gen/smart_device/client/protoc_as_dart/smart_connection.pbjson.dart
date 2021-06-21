///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deviceTypesDescriptor instead')
const DeviceTypes$json = const {
  '1': 'DeviceTypes',
  '2': const [
    const {'1': 'typeNotSupported', '2': 0},
    const {'1': 'light', '2': 1},
    const {'1': 'blinds', '2': 2},
    const {'1': 'boiler', '2': 3},
    const {'1': 'button', '2': 4},
    const {'1': 'buttonWithLight', '2': 5},
    const {'1': 'hub', '2': 7},
    const {'1': 'phoneApp', '2': 8},
    const {'1': 'computerApp', '2': 9},
    const {'1': 'browserApp', '2': 10},
  ],
};

/// Descriptor for `DeviceTypes`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceTypesDescriptor = $convert.base64Decode('CgtEZXZpY2VUeXBlcxIUChB0eXBlTm90U3VwcG9ydGVkEAASCQoFbGlnaHQQARIKCgZibGluZHMQAhIKCgZib2lsZXIQAxIKCgZidXR0b24QBBITCg9idXR0b25XaXRoTGlnaHQQBRIHCgNodWIQBxIMCghwaG9uZUFwcBAIEg8KC2NvbXB1dGVyQXBwEAkSDgoKYnJvd3NlckFwcBAK');
@$core.Deprecated('Use deviceActionsDescriptor instead')
const DeviceActions$json = const {
  '1': 'DeviceActions',
  '2': const [
    const {'1': 'actionNotSupported', '2': 0},
    const {'1': 'on', '2': 1},
    const {'1': 'off', '2': 2},
    const {'1': 'moveUp', '2': 3},
    const {'1': 'stop', '2': 4},
    const {'1': 'moveDown', '2': 5},
    const {'1': 'pressed', '2': 6},
    const {'1': 'longPress', '2': 7},
    const {'1': 'doubleTap', '2': 8},
  ],
};

/// Descriptor for `DeviceActions`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceActionsDescriptor = $convert.base64Decode('Cg1EZXZpY2VBY3Rpb25zEhYKEmFjdGlvbk5vdFN1cHBvcnRlZBAAEgYKAm9uEAESBwoDb2ZmEAISCgoGbW92ZVVwEAMSCAoEc3RvcBAEEgwKCG1vdmVEb3duEAUSCwoHcHJlc3NlZBAGEg0KCWxvbmdQcmVzcxAHEg0KCWRvdWJsZVRhcBAI');
@$core.Deprecated('Use whenToExecuteDescriptor instead')
const WhenToExecute$json = const {
  '1': 'WhenToExecute',
  '2': const [
    const {'1': 'undefined', '2': 0},
    const {'1': 'onOddNumberPress', '2': 1},
    const {'1': 'evenNumberPress', '2': 2},
    const {'1': 'betweenSelectedTime', '2': 3},
    const {'1': 'doNotBetweenSelectedTime', '2': 4},
    const {'1': 'allTheTime', '2': 5},
    const {'1': 'never', '2': 6},
    const {'1': 'onceNow', '2': 7},
    const {'1': 'onceInSelectedTime', '2': 8},
    const {'1': 'onlyIfDeviceListIsAreInActionListState', '2': 9},
    const {'1': 'atHome', '2': 10},
    const {'1': 'outOfHome', '2': 11},
  ],
};

/// Descriptor for `WhenToExecute`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List whenToExecuteDescriptor = $convert.base64Decode('Cg1XaGVuVG9FeGVjdXRlEg0KCXVuZGVmaW5lZBAAEhQKEG9uT2RkTnVtYmVyUHJlc3MQARITCg9ldmVuTnVtYmVyUHJlc3MQAhIXChNiZXR3ZWVuU2VsZWN0ZWRUaW1lEAMSHAoYZG9Ob3RCZXR3ZWVuU2VsZWN0ZWRUaW1lEAQSDgoKYWxsVGhlVGltZRAFEgkKBW5ldmVyEAYSCwoHb25jZU5vdxAHEhYKEm9uY2VJblNlbGVjdGVkVGltZRAIEioKJm9ubHlJZkRldmljZUxpc3RJc0FyZUluQWN0aW9uTGlzdFN0YXRlEAkSCgoGYXRIb21lEAoSDQoJb3V0T2ZIb21lEAs=');
@$core.Deprecated('Use deviceStateGRPCDescriptor instead')
const DeviceStateGRPC$json = const {
  '1': 'DeviceStateGRPC',
  '2': const [
    const {'1': 'stateNotSupported', '2': 0},
    const {'1': 'cancelStateInProcess', '2': 1},
    const {'1': 'ack', '2': 2},
    const {'1': 'newStateFailed', '2': 3},
    const {'1': 'waitingInFirebase', '2': 4},
    const {'1': 'waitingInComp', '2': 5},
  ],
};

/// Descriptor for `DeviceStateGRPC`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceStateGRPCDescriptor = $convert.base64Decode('Cg9EZXZpY2VTdGF0ZUdSUEMSFQoRc3RhdGVOb3RTdXBwb3J0ZWQQABIYChRjYW5jZWxTdGF0ZUluUHJvY2VzcxABEgcKA2FjaxACEhIKDm5ld1N0YXRlRmFpbGVkEAMSFQoRd2FpdGluZ0luRmlyZWJhc2UQBBIRCg13YWl0aW5nSW5Db21wEAU=');
@$core.Deprecated('Use clientStatusRequestsDescriptor instead')
const ClientStatusRequests$json = const {
  '1': 'ClientStatusRequests',
  '2': const [
    const {'1': 'allRemoteCommands', '3': 41, '4': 1, '5': 11, '6': '.SmartConnection.AllRemoteCommands', '10': 'allRemoteCommands'},
  ],
};

/// Descriptor for `ClientStatusRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientStatusRequestsDescriptor = $convert.base64Decode('ChRDbGllbnRTdGF0dXNSZXF1ZXN0cxJQChFhbGxSZW1vdGVDb21tYW5kcxgpIAEoCzIiLlNtYXJ0Q29ubmVjdGlvbi5BbGxSZW1vdGVDb21tYW5kc1IRYWxsUmVtb3RlQ29tbWFuZHM=');
@$core.Deprecated('Use requestsAndStatusFromHubDescriptor instead')
const RequestsAndStatusFromHub$json = const {
  '1': 'RequestsAndStatusFromHub',
  '2': const [
    const {'1': 'allRemoteCommands', '3': 42, '4': 1, '5': 11, '6': '.SmartConnection.AllRemoteCommands', '10': 'allRemoteCommands'},
  ],
};

/// Descriptor for `RequestsAndStatusFromHub`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestsAndStatusFromHubDescriptor = $convert.base64Decode('ChhSZXF1ZXN0c0FuZFN0YXR1c0Zyb21IdWISUAoRYWxsUmVtb3RlQ29tbWFuZHMYKiABKAsyIi5TbWFydENvbm5lY3Rpb24uQWxsUmVtb3RlQ29tbWFuZHNSEWFsbFJlbW90ZUNvbW1hbmRz');
@$core.Deprecated('Use allRemoteCommandsDescriptor instead')
const AllRemoteCommands$json = const {
  '1': 'AllRemoteCommands',
  '2': const [
    const {'1': 'smartDeviceInfo', '3': 40, '4': 1, '5': 11, '6': '.SmartConnection.SmartDeviceInfo', '10': 'smartDeviceInfo'},
  ],
};

/// Descriptor for `AllRemoteCommands`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allRemoteCommandsDescriptor = $convert.base64Decode('ChFBbGxSZW1vdGVDb21tYW5kcxJKCg9zbWFydERldmljZUluZm8YKCABKAsyIC5TbWFydENvbm5lY3Rpb24uU21hcnREZXZpY2VJbmZvUg9zbWFydERldmljZUluZm8=');
@$core.Deprecated('Use firstSetupMessageDescriptor instead')
const FirstSetupMessage$json = const {
  '1': 'FirstSetupMessage',
  '2': const [
    const {'1': 'compInfo', '3': 38, '4': 1, '5': 11, '6': '.SmartConnection.CompInfo', '10': 'compInfo'},
    const {'1': 'firebaseAccountInformation', '3': 39, '4': 1, '5': 11, '6': '.SmartConnection.FirebaseAccountInformation', '10': 'firebaseAccountInformation'},
  ],
};

/// Descriptor for `FirstSetupMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firstSetupMessageDescriptor = $convert.base64Decode('ChFGaXJzdFNldHVwTWVzc2FnZRI1Cghjb21wSW5mbxgmIAEoCzIZLlNtYXJ0Q29ubmVjdGlvbi5Db21wSW5mb1IIY29tcEluZm8SawoaZmlyZWJhc2VBY2NvdW50SW5mb3JtYXRpb24YJyABKAsyKy5TbWFydENvbm5lY3Rpb24uRmlyZWJhc2VBY2NvdW50SW5mb3JtYXRpb25SGmZpcmViYXNlQWNjb3VudEluZm9ybWF0aW9u');
@$core.Deprecated('Use compInfoDescriptor instead')
const CompInfo$json = const {
  '1': 'CompInfo',
  '2': const [
    const {'1': 'compSpecs', '3': 21, '4': 1, '5': 11, '6': '.SmartConnection.CompSpecs', '10': 'compSpecs'},
    const {'1': 'smartDevicesInComp', '3': 28, '4': 3, '5': 11, '6': '.SmartConnection.SmartDeviceInfo', '10': 'smartDevicesInComp'},
  ],
};

/// Descriptor for `CompInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compInfoDescriptor = $convert.base64Decode('CghDb21wSW5mbxI4Cgljb21wU3BlY3MYFSABKAsyGi5TbWFydENvbm5lY3Rpb24uQ29tcFNwZWNzUgljb21wU3BlY3MSUAoSc21hcnREZXZpY2VzSW5Db21wGBwgAygLMiAuU21hcnRDb25uZWN0aW9uLlNtYXJ0RGV2aWNlSW5mb1ISc21hcnREZXZpY2VzSW5Db21w');
@$core.Deprecated('Use compSpecsDescriptor instead')
const CompSpecs$json = const {
  '1': 'CompSpecs',
  '2': const [
    const {'1': 'compId', '3': 22, '4': 1, '5': 9, '10': 'compId'},
    const {'1': 'compUuid', '3': 23, '4': 1, '5': 9, '10': 'compUuid'},
    const {'1': 'compOs', '3': 24, '4': 1, '5': 9, '10': 'compOs'},
    const {'1': 'compModel', '3': 25, '4': 1, '5': 9, '10': 'compModel'},
    const {'1': 'compType', '3': 26, '4': 1, '5': 9, '10': 'compType'},
    const {'1': 'pubspecYamlVersion', '3': 27, '4': 1, '5': 9, '10': 'pubspecYamlVersion'},
  ],
};

/// Descriptor for `CompSpecs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compSpecsDescriptor = $convert.base64Decode('CglDb21wU3BlY3MSFgoGY29tcElkGBYgASgJUgZjb21wSWQSGgoIY29tcFV1aWQYFyABKAlSCGNvbXBVdWlkEhYKBmNvbXBPcxgYIAEoCVIGY29tcE9zEhwKCWNvbXBNb2RlbBgZIAEoCVIJY29tcE1vZGVsEhoKCGNvbXBUeXBlGBogASgJUghjb21wVHlwZRIuChJwdWJzcGVjWWFtbFZlcnNpb24YGyABKAlSEnB1YnNwZWNZYW1sVmVyc2lvbg==');
@$core.Deprecated('Use microcontrollerSpecsDescriptor instead')
const MicrocontrollerSpecs$json = const {
  '1': 'MicrocontrollerSpecs',
  '2': const [
    const {'1': 'microcontrollerModel', '3': 31, '4': 1, '5': 9, '10': 'microcontrollerModel'},
    const {'1': 'microcontrollerType', '3': 32, '4': 1, '5': 9, '10': 'microcontrollerType'},
    const {'1': 'softwareVersion', '3': 33, '4': 1, '5': 9, '10': 'softwareVersion'},
  ],
};

/// Descriptor for `MicrocontrollerSpecs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List microcontrollerSpecsDescriptor = $convert.base64Decode('ChRNaWNyb2NvbnRyb2xsZXJTcGVjcxIyChRtaWNyb2NvbnRyb2xsZXJNb2RlbBgfIAEoCVIUbWljcm9jb250cm9sbGVyTW9kZWwSMAoTbWljcm9jb250cm9sbGVyVHlwZRggIAEoCVITbWljcm9jb250cm9sbGVyVHlwZRIoCg9zb2Z0d2FyZVZlcnNpb24YISABKAlSD3NvZnR3YXJlVmVyc2lvbg==');
@$core.Deprecated('Use smartDeviceInfoDescriptor instead')
const SmartDeviceInfo$json = const {
  '1': 'SmartDeviceInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'defaultName', '3': 14, '4': 1, '5': 9, '10': 'defaultName'},
    const {'1': 'roomId', '3': 15, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'senderDeviceModel', '3': 16, '4': 1, '5': 9, '10': 'senderDeviceModel'},
    const {'1': 'senderDeviceOs', '3': 17, '4': 1, '5': 9, '10': 'senderDeviceOs'},
    const {'1': 'senderId', '3': 18, '4': 1, '5': 9, '10': 'senderId'},
    const {'1': 'serverTimeStamp', '3': 19, '4': 1, '5': 9, '10': 'serverTimeStamp'},
    const {'1': 'stateMassage', '3': 20, '4': 1, '5': 9, '10': 'stateMassage'},
    const {'1': 'isComputer', '3': 29, '4': 1, '5': 8, '10': 'isComputer'},
    const {'1': 'compSpecs', '3': 30, '4': 1, '5': 11, '6': '.SmartConnection.CompSpecs', '10': 'compSpecs'},
    const {'1': 'microcontrollerSpecsSpecs', '3': 31, '4': 1, '5': 11, '6': '.SmartConnection.MicrocontrollerSpecs', '10': 'microcontrollerSpecsSpecs'},
    const {'1': 'deviceTypesActions', '3': 34, '4': 1, '5': 11, '6': '.SmartConnection.DeviceTypesActions', '10': 'deviceTypesActions'},
  ],
};

/// Descriptor for `SmartDeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smartDeviceInfoDescriptor = $convert.base64Decode('Cg9TbWFydERldmljZUluZm8SDgoCaWQYASABKAlSAmlkEhQKBXN0YXRlGAMgASgJUgVzdGF0ZRIgCgtkZWZhdWx0TmFtZRgOIAEoCVILZGVmYXVsdE5hbWUSFgoGcm9vbUlkGA8gASgJUgZyb29tSWQSLAoRc2VuZGVyRGV2aWNlTW9kZWwYECABKAlSEXNlbmRlckRldmljZU1vZGVsEiYKDnNlbmRlckRldmljZU9zGBEgASgJUg5zZW5kZXJEZXZpY2VPcxIaCghzZW5kZXJJZBgSIAEoCVIIc2VuZGVySWQSKAoPc2VydmVyVGltZVN0YW1wGBMgASgJUg9zZXJ2ZXJUaW1lU3RhbXASIgoMc3RhdGVNYXNzYWdlGBQgASgJUgxzdGF0ZU1hc3NhZ2USHgoKaXNDb21wdXRlchgdIAEoCFIKaXNDb21wdXRlchI4Cgljb21wU3BlY3MYHiABKAsyGi5TbWFydENvbm5lY3Rpb24uQ29tcFNwZWNzUgljb21wU3BlY3MSYwoZbWljcm9jb250cm9sbGVyU3BlY3NTcGVjcxgfIAEoCzIlLlNtYXJ0Q29ubmVjdGlvbi5NaWNyb2NvbnRyb2xsZXJTcGVjc1IZbWljcm9jb250cm9sbGVyU3BlY3NTcGVjcxJTChJkZXZpY2VUeXBlc0FjdGlvbnMYIiABKAsyIy5TbWFydENvbm5lY3Rpb24uRGV2aWNlVHlwZXNBY3Rpb25zUhJkZXZpY2VUeXBlc0FjdGlvbnM=');
@$core.Deprecated('Use smartDeviceStatusDescriptor instead')
const SmartDeviceStatus$json = const {
  '1': 'SmartDeviceStatus',
  '2': const [
    const {'1': 'onOffState', '3': 4, '4': 1, '5': 8, '10': 'onOffState'},
  ],
};

/// Descriptor for `SmartDeviceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smartDeviceStatusDescriptor = $convert.base64Decode('ChFTbWFydERldmljZVN0YXR1cxIeCgpvbk9mZlN0YXRlGAQgASgIUgpvbk9mZlN0YXRl');
@$core.Deprecated('Use commendStatusDescriptor instead')
const CommendStatus$json = const {
  '1': 'CommendStatus',
  '2': const [
    const {'1': 'success', '3': 5, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CommendStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commendStatusDescriptor = $convert.base64Decode('Cg1Db21tZW5kU3RhdHVzEhgKB3N1Y2Nlc3MYBSABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use smartDeviceUpdateDetailsDescriptor instead')
const SmartDeviceUpdateDetails$json = const {
  '1': 'SmartDeviceUpdateDetails',
  '2': const [
    const {'1': 'smartDevice', '3': 6, '4': 1, '5': 11, '6': '.SmartConnection.SmartDeviceInfo', '10': 'smartDevice'},
    const {'1': 'newName', '3': 7, '4': 1, '5': 9, '10': 'newName'},
  ],
};

/// Descriptor for `SmartDeviceUpdateDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smartDeviceUpdateDetailsDescriptor = $convert.base64Decode('ChhTbWFydERldmljZVVwZGF0ZURldGFpbHMSQgoLc21hcnREZXZpY2UYBiABKAsyIC5TbWFydENvbm5lY3Rpb24uU21hcnREZXZpY2VJbmZvUgtzbWFydERldmljZRIYCgduZXdOYW1lGAcgASgJUgduZXdOYW1l');
@$core.Deprecated('Use firebaseAccountInformationDescriptor instead')
const FirebaseAccountInformation$json = const {
  '1': 'FirebaseAccountInformation',
  '2': const [
    const {'1': 'fireBaseProjectId', '3': 8, '4': 1, '5': 9, '10': 'fireBaseProjectId'},
    const {'1': 'fireBaseApiKey', '3': 9, '4': 1, '5': 9, '10': 'fireBaseApiKey'},
    const {'1': 'userEmail', '3': 10, '4': 1, '5': 9, '10': 'userEmail'},
    const {'1': 'userPassword', '3': 11, '4': 1, '5': 9, '10': 'userPassword'},
    const {'1': 'homeId', '3': 12, '4': 1, '5': 9, '10': 'homeId'},
  ],
};

/// Descriptor for `FirebaseAccountInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firebaseAccountInformationDescriptor = $convert.base64Decode('ChpGaXJlYmFzZUFjY291bnRJbmZvcm1hdGlvbhIsChFmaXJlQmFzZVByb2plY3RJZBgIIAEoCVIRZmlyZUJhc2VQcm9qZWN0SWQSJgoOZmlyZUJhc2VBcGlLZXkYCSABKAlSDmZpcmVCYXNlQXBpS2V5EhwKCXVzZXJFbWFpbBgKIAEoCVIJdXNlckVtYWlsEiIKDHVzZXJQYXNzd29yZBgLIAEoCVIMdXNlclBhc3N3b3JkEhYKBmhvbWVJZBgMIAEoCVIGaG9tZUlk');
@$core.Deprecated('Use deviceTypesActionsDescriptor instead')
const DeviceTypesActions$json = const {
  '1': 'DeviceTypesActions',
  '2': const [
    const {'1': 'deviceType', '3': 35, '4': 1, '5': 14, '6': '.SmartConnection.DeviceTypes', '10': 'deviceType'},
    const {'1': 'deviceAction', '3': 36, '4': 1, '5': 14, '6': '.SmartConnection.DeviceActions', '10': 'deviceAction'},
    const {'1': 'deviceStateGRPC', '3': 37, '4': 1, '5': 14, '6': '.SmartConnection.DeviceStateGRPC', '10': 'deviceStateGRPC'},
  ],
};

/// Descriptor for `DeviceTypesActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceTypesActionsDescriptor = $convert.base64Decode('ChJEZXZpY2VUeXBlc0FjdGlvbnMSPAoKZGV2aWNlVHlwZRgjIAEoDjIcLlNtYXJ0Q29ubmVjdGlvbi5EZXZpY2VUeXBlc1IKZGV2aWNlVHlwZRJCCgxkZXZpY2VBY3Rpb24YJCABKA4yHi5TbWFydENvbm5lY3Rpb24uRGV2aWNlQWN0aW9uc1IMZGV2aWNlQWN0aW9uEkoKD2RldmljZVN0YXRlR1JQQxglIAEoDjIgLlNtYXJ0Q29ubmVjdGlvbi5EZXZpY2VTdGF0ZUdSUENSD2RldmljZVN0YXRlR1JQQw==');
