///
//  Generated code. Do not modify.
//  source: SmartConnection.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;
import 'SmartConnection.pb.dart' as $0;
export 'SmartConnection.pb.dart';

class SmartServerClient extends $grpc.Client {
  static final _$getStatus =
      $grpc.ClientMethod<$0.SmartDevice, $0.SmartDeviceStatus>(
          '/SmartConnection.SmartServer/GetStatus',
          ($0.SmartDevice value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SmartDeviceStatus.fromBuffer(value));

  SmartServerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SmartDeviceStatus> getStatus($0.SmartDevice request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SmartServerServiceBase extends $grpc.Service {
  $core.String get $name => 'SmartConnection.SmartServer';

  SmartServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SmartDevice, $0.SmartDeviceStatus>(
        'GetStatus',
        getStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDevice.fromBuffer(value),
        ($0.SmartDeviceStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.SmartDeviceStatus> getStatus_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDevice> request) async {
    return getStatus(call, await request);
  }

  $async.Future<$0.SmartDeviceStatus> getStatus(
      $grpc.ServiceCall call, $0.SmartDevice request);
}
