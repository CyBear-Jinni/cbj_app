///
import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'security_bear_connections.pb.dart' as $0;

export 'security_bear_connections.pb.dart';

class SecurityBearClient extends $grpc.Client {
  static final _$setWiFiInformation =
      $grpc.ClientMethod<$0.SecurityBearSetup, $0.SBCommendStatus>(
          '/SecurityBearConnections.SecurityBear/SetWiFiInformation',
          ($0.SecurityBearSetup value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SBCommendStatus.fromBuffer(value));
  static final _$setFirebaseAccountInformation =
      $grpc.ClientMethod<$0.SBFirebaseAccountInformation, $0.SBCommendStatus>(
          '/SecurityBearConnections.SecurityBear/SetFirebaseAccountInformation',
          ($0.SBFirebaseAccountInformation value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SBCommendStatus.fromBuffer(value));

  SecurityBearClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SBCommendStatus> setWiFiInformation(
      $0.SecurityBearSetup request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$setWiFiInformation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SBCommendStatus> setFirebaseAccountInformation(
      $0.SBFirebaseAccountInformation request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$setFirebaseAccountInformation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SecurityBearServiceBase extends $grpc.Service {
  $core.String get $name => 'SecurityBearConnections.SecurityBear';

  SecurityBearServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SecurityBearSetup, $0.SBCommendStatus>(
        'SetWiFiInformation',
        setWiFiInformation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SecurityBearSetup.fromBuffer(value),
        ($0.SBCommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SBFirebaseAccountInformation,
            $0.SBCommendStatus>(
        'SetFirebaseAccountInformation',
        setFirebaseAccountInformation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SBFirebaseAccountInformation.fromBuffer(value),
        ($0.SBCommendStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.SBCommendStatus> setWiFiInformation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SecurityBearSetup> request) async {
    return setWiFiInformation(call, await request);
  }

  $async.Future<$0.SBCommendStatus> setFirebaseAccountInformation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SBFirebaseAccountInformation> request) async {
    return setFirebaseAccountInformation(call, await request);
  }

  $async.Future<$0.SBCommendStatus> setWiFiInformation(
      $grpc.ServiceCall call, $0.SecurityBearSetup request);
  $async.Future<$0.SBCommendStatus> setFirebaseAccountInformation(
      $grpc.ServiceCall call, $0.SBFirebaseAccountInformation request);
}
