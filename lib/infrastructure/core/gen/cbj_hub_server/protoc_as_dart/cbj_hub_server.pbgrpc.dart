///
//  Generated code. Do not modify.
//  source: cbj_hub_server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cbj_hub_server.pb.dart' as $0;
export 'cbj_hub_server.pb.dart';

class CbjHubClient extends $grpc.Client {
  static final _$clientTransferDevices =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.SmartDeviceInfo>(
          '/CbjHub.CbjHub/ClientTransferDevices',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SmartDeviceInfo.fromBuffer(value));
  static final _$hubTransferDevices =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.SmartDeviceInfo>(
          '/CbjHub.CbjHub/HubTransferDevices',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SmartDeviceInfo.fromBuffer(value));

  CbjHubClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.SmartDeviceInfo> clientTransferDevices(
      $async.Stream<$0.SmartDeviceInfo> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$clientTransferDevices, request,
        options: options);
  }

  $grpc.ResponseStream<$0.SmartDeviceInfo> hubTransferDevices(
      $async.Stream<$0.SmartDeviceInfo> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$hubTransferDevices, request,
        options: options);
  }
}

abstract class CbjHubServiceBase extends $grpc.Service {
  $core.String get $name => 'CbjHub.CbjHub';

  CbjHubServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.SmartDeviceInfo>(
        'ClientTransferDevices',
        clientTransferDevices,
        true,
        true,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.SmartDeviceInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.SmartDeviceInfo>(
        'HubTransferDevices',
        hubTransferDevices,
        true,
        true,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.SmartDeviceInfo value) => value.writeToBuffer()));
  }

  $async.Stream<$0.SmartDeviceInfo> clientTransferDevices(
      $grpc.ServiceCall call, $async.Stream<$0.SmartDeviceInfo> request);
  $async.Stream<$0.SmartDeviceInfo> hubTransferDevices(
      $grpc.ServiceCall call, $async.Stream<$0.SmartDeviceInfo> request);
}
