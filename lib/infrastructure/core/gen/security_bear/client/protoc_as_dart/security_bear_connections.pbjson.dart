///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use securityBearSetupDescriptor instead')
const SecurityBearSetup$json = const {
  '1': 'SecurityBearSetup',
  '2': const [
    const {
      '1': 'wiFiFirstPriority',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.SecurityBearConnections.WiFiInformation',
      '10': 'wiFiFirstPriority'
    },
    const {
      '1': 'wiFiSecondPriority',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.SecurityBearConnections.WiFiInformation',
      '10': 'wiFiSecondPriority'
    },
  ],
};

/// Descriptor for `SecurityBearSetup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List securityBearSetupDescriptor = $convert.base64Decode(
    'ChFTZWN1cml0eUJlYXJTZXR1cBJWChF3aUZpRmlyc3RQcmlvcml0eRgDIAEoCzIoLlNlY3VyaXR5QmVhckNvbm5lY3Rpb25zLldpRmlJbmZvcm1hdGlvblIRd2lGaUZpcnN0UHJpb3JpdHkSWAoSd2lGaVNlY29uZFByaW9yaXR5GAQgASgLMiguU2VjdXJpdHlCZWFyQ29ubmVjdGlvbnMuV2lGaUluZm9ybWF0aW9uUhJ3aUZpU2Vjb25kUHJpb3JpdHk=');
@$core.Deprecated('Use wiFiInformationDescriptor instead')
const WiFiInformation$json = const {
  '1': 'WiFiInformation',
  '2': const [
    const {'1': 'wiFiName', '3': 1, '4': 1, '5': 9, '10': 'wiFiName'},
    const {'1': 'wiFiPassword', '3': 2, '4': 1, '5': 9, '10': 'wiFiPassword'},
  ],
};

/// Descriptor for `WiFiInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wiFiInformationDescriptor = $convert.base64Decode(
    'Cg9XaUZpSW5mb3JtYXRpb24SGgoId2lGaU5hbWUYASABKAlSCHdpRmlOYW1lEiIKDHdpRmlQYXNzd29yZBgCIAEoCVIMd2lGaVBhc3N3b3Jk');
@$core.Deprecated('Use sBCommendStatusDescriptor instead')
const SBCommendStatus$json = const {
  '1': 'SBCommendStatus',
  '2': const [
    const {'1': 'success', '3': 5, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SBCommendStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sBCommendStatusDescriptor = $convert.base64Decode(
    'Cg9TQkNvbW1lbmRTdGF0dXMSGAoHc3VjY2VzcxgFIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use sBFirebaseAccountAndSecurityBearSetupDescriptor instead')
const SBFirebaseAccountAndSecurityBearSetup$json = const {
  '1': 'SBFirebaseAccountAndSecurityBearSetup',
  '2': const [
    const {
      '1': 'sBFirebaseAccountInformation',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.SecurityBearConnections.SBFirebaseAccountInformation',
      '10': 'sBFirebaseAccountInformation'
    },
    const {
      '1': 'securityBearSetup',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.SecurityBearConnections.SecurityBearSetup',
      '10': 'securityBearSetup'
    },
  ],
};

/// Descriptor for `SBFirebaseAccountAndSecurityBearSetup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sBFirebaseAccountAndSecurityBearSetupDescriptor =
    $convert.base64Decode(
        'CiVTQkZpcmViYXNlQWNjb3VudEFuZFNlY3VyaXR5QmVhclNldHVwEnkKHHNCRmlyZWJhc2VBY2NvdW50SW5mb3JtYXRpb24YCiABKAsyNS5TZWN1cml0eUJlYXJDb25uZWN0aW9ucy5TQkZpcmViYXNlQWNjb3VudEluZm9ybWF0aW9uUhxzQkZpcmViYXNlQWNjb3VudEluZm9ybWF0aW9uElgKEXNlY3VyaXR5QmVhclNldHVwGAsgASgLMiouU2VjdXJpdHlCZWFyQ29ubmVjdGlvbnMuU2VjdXJpdHlCZWFyU2V0dXBSEXNlY3VyaXR5QmVhclNldHVw');
@$core.Deprecated('Use sBFirebaseAccountInformationDescriptor instead')
const SBFirebaseAccountInformation$json = const {
  '1': 'SBFirebaseAccountInformation',
  '2': const [
    const {
      '1': 'fireBaseProjectId',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'fireBaseProjectId'
    },
    const {
      '1': 'fireBaseApiKey',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'fireBaseApiKey'
    },
    const {'1': 'userEmail', '3': 8, '4': 1, '5': 9, '10': 'userEmail'},
    const {'1': 'userPassword', '3': 9, '4': 1, '5': 9, '10': 'userPassword'},
  ],
};

/// Descriptor for `SBFirebaseAccountInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sBFirebaseAccountInformationDescriptor =
    $convert.base64Decode(
        'ChxTQkZpcmViYXNlQWNjb3VudEluZm9ybWF0aW9uEiwKEWZpcmVCYXNlUHJvamVjdElkGAYgASgJUhFmaXJlQmFzZVByb2plY3RJZBImCg5maXJlQmFzZUFwaUtleRgHIAEoCVIOZmlyZUJhc2VBcGlLZXkSHAoJdXNlckVtYWlsGAggASgJUgl1c2VyRW1haWwSIgoMdXNlclBhc3N3b3JkGAkgASgJUgx1c2VyUGFzc3dvcmQ=');
