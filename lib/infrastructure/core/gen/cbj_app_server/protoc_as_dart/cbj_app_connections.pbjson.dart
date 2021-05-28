///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use compInfoSBDescriptor instead')
const CompInfoSB$json = const {
  '1': 'CompInfoSB',
  '2': const [
    const {'1': 'compIP', '3': 2, '4': 1, '5': 9, '10': 'compIP'},
  ],
};

/// Descriptor for `CompInfoSB`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compInfoSBDescriptor =
    $convert.base64Decode('CgpDb21wSW5mb1NCEhYKBmNvbXBJUBgCIAEoCVIGY29tcElQ');
@$core.Deprecated('Use cBJCommendStatusDescriptor instead')
const CBJCommendStatus$json = const {
  '1': 'CBJCommendStatus',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CBJCommendStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cBJCommendStatusDescriptor = $convert.base64Decode(
    'ChBDQkpDb21tZW5kU3RhdHVzEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
