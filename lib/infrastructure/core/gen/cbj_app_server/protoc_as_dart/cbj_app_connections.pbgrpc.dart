///
//  Generated code. Do not modify.
//  source: cbj_app_connections.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cbj_app_connections.pb.dart' as $0;
export 'cbj_app_connections.pb.dart';

class CyBearJinniAppClient extends $grpc.Client {
  static final _$cBJAppGetSmartDeviceInformation =
      $grpc.ClientMethod<$0.CompInfoSB, $0.CBJCommendStatus>(
          '/CBJAppConnections.CyBearJinniApp/CBJAppGetSmartDeviceInformation',
          ($0.CompInfoSB value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CBJCommendStatus.fromBuffer(value));

  CyBearJinniAppClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CBJCommendStatus> cBJAppGetSmartDeviceInformation(
      $0.CompInfoSB request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$cBJAppGetSmartDeviceInformation, request,
        options: options);
  }
}

abstract class CyBearJinniAppServiceBase extends $grpc.Service {
  $core.String get $name => 'CBJAppConnections.CyBearJinniApp';

  CyBearJinniAppServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CompInfoSB, $0.CBJCommendStatus>(
        'CBJAppGetSmartDeviceInformation',
        cBJAppGetSmartDeviceInformation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CompInfoSB.fromBuffer(value),
        ($0.CBJCommendStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.CBJCommendStatus> cBJAppGetSmartDeviceInformation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CompInfoSB> request) async {
    return cBJAppGetSmartDeviceInformation(call, await request);
  }

  $async.Future<$0.CBJCommendStatus> cBJAppGetSmartDeviceInformation(
      $grpc.ServiceCall call, $0.CompInfoSB request);
}
