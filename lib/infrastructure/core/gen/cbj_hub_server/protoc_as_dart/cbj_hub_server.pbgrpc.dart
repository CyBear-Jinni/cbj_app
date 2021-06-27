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

class CbjServerClient extends $grpc.Client {
  static final _$registerClient =
      $grpc.ClientMethod<$0.ClientStatusRequests, $0.RequestsAndStatusFromHub>(
          '/HubServer.CbjServer/RegisterClient',
          ($0.ClientStatusRequests value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RequestsAndStatusFromHub.fromBuffer(value));
  static final _$registerHub =
      $grpc.ClientMethod<$0.RequestsAndStatusFromHub, $0.ClientStatusRequests>(
          '/HubServer.CbjServer/RegisterHub',
          ($0.RequestsAndStatusFromHub value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ClientStatusRequests.fromBuffer(value));

  CbjServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.RequestsAndStatusFromHub> registerClient(
      $async.Stream<$0.ClientStatusRequests> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$registerClient, request, options: options);
  }

  $grpc.ResponseStream<$0.ClientStatusRequests> registerHub(
      $async.Stream<$0.RequestsAndStatusFromHub> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$registerHub, request, options: options);
  }
}

abstract class CbjServerServiceBase extends $grpc.Service {
  $core.String get $name => 'HubServer.CbjServer';

  CbjServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClientStatusRequests,
            $0.RequestsAndStatusFromHub>(
        'RegisterClient',
        registerClient,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.ClientStatusRequests.fromBuffer(value),
        ($0.RequestsAndStatusFromHub value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestsAndStatusFromHub,
            $0.ClientStatusRequests>(
        'RegisterHub',
        registerHub,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.RequestsAndStatusFromHub.fromBuffer(value),
        ($0.ClientStatusRequests value) => value.writeToBuffer()));
  }

  $async.Stream<$0.RequestsAndStatusFromHub> registerClient(
      $grpc.ServiceCall call, $async.Stream<$0.ClientStatusRequests> request);
  $async.Stream<$0.ClientStatusRequests> registerHub($grpc.ServiceCall call,
      $async.Stream<$0.RequestsAndStatusFromHub> request);
}
