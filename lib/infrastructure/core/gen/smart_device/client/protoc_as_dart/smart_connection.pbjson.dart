///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use smartDeviceDescriptor instead')
const SmartDevice$json = const {
  '1': 'SmartDevice',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'action', '3': 13, '4': 1, '5': 9, '10': 'action'},
    const {'1': 'defaultName', '3': 14, '4': 1, '5': 9, '10': 'defaultName'},
    const {'1': 'roomId', '3': 15, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'senderDeviceModel', '3': 16, '4': 1, '5': 9, '10': 'senderDeviceModel'},
    const {'1': 'senderDeviceOs', '3': 17, '4': 1, '5': 9, '10': 'senderDeviceOs'},
    const {'1': 'senderId', '3': 18, '4': 1, '5': 9, '10': 'senderId'},
    const {'1': 'serverTimeStamp', '3': 19, '4': 1, '5': 9, '10': 'serverTimeStamp'},
    const {'1': 'stateMassage', '3': 20, '4': 1, '5': 9, '10': 'stateMassage'},
    const {'1': 'compMacAddress', '3': 21, '4': 1, '5': 9, '10': 'compMacAddress'},
  ],
};

/// Descriptor for `SmartDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smartDeviceDescriptor = $convert.base64Decode('CgtTbWFydERldmljZRIOCgJpZBgBIAEoCVICaWQSEgoEdHlwZRgCIAEoCVIEdHlwZRIUCgVzdGF0ZRgDIAEoCVIFc3RhdGUSFgoGYWN0aW9uGA0gASgJUgZhY3Rpb24SIAoLZGVmYXVsdE5hbWUYDiABKAlSC2RlZmF1bHROYW1lEhYKBnJvb21JZBgPIAEoCVIGcm9vbUlkEiwKEXNlbmRlckRldmljZU1vZGVsGBAgASgJUhFzZW5kZXJEZXZpY2VNb2RlbBImCg5zZW5kZXJEZXZpY2VPcxgRIAEoCVIOc2VuZGVyRGV2aWNlT3MSGgoIc2VuZGVySWQYEiABKAlSCHNlbmRlcklkEigKD3NlcnZlclRpbWVTdGFtcBgTIAEoCVIPc2VydmVyVGltZVN0YW1wEiIKDHN0YXRlTWFzc2FnZRgUIAEoCVIMc3RhdGVNYXNzYWdlEiYKDmNvbXBNYWNBZGRyZXNzGBUgASgJUg5jb21wTWFjQWRkcmVzcw==');
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
    const {'1': 'smartDevice', '3': 6, '4': 1, '5': 11, '6': '.SmartConnection.SmartDevice', '10': 'smartDevice'},
    const {'1': 'newName', '3': 7, '4': 1, '5': 9, '10': 'newName'},
  ],
};

/// Descriptor for `SmartDeviceUpdateDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smartDeviceUpdateDetailsDescriptor = $convert.base64Decode('ChhTbWFydERldmljZVVwZGF0ZURldGFpbHMSPgoLc21hcnREZXZpY2UYBiABKAsyHC5TbWFydENvbm5lY3Rpb24uU21hcnREZXZpY2VSC3NtYXJ0RGV2aWNlEhgKB25ld05hbWUYByABKAlSB25ld05hbWU=');
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
