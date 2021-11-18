///
//  Generated code. Do not modify.
//  source: cbj_app_connections.proto
//
// @dart = 2.12
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
  static final _$getCompInfo = $grpc.ClientMethod<$0.CompInfo, $0.CompInfo>(
      '/CBJAppConnections.CyBearJinniApp/getCompInfo',
      ($0.CompInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CompInfo.fromBuffer(value));

  CyBearJinniAppClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CBJCommendStatus> cBJAppGetSmartDeviceInformation(
      $0.CompInfoSB request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cBJAppGetSmartDeviceInformation, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.CompInfo> getCompInfo($0.CompInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompInfo, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.CompInfo, $0.CompInfo>(
        'getCompInfo',
        getCompInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CompInfo.fromBuffer(value),
        ($0.CompInfo value) => value.writeToBuffer()));
  }

  $async.Future<$0.CBJCommendStatus> cBJAppGetSmartDeviceInformation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CompInfoSB> request) async {
    return cBJAppGetSmartDeviceInformation(call, await request);
  }

  $async.Future<$0.CompInfo> getCompInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CompInfo> request) async {
    return getCompInfo(call, await request);
  }

  $async.Future<$0.CBJCommendStatus> cBJAppGetSmartDeviceInformation(
      $grpc.ServiceCall call, $0.CompInfoSB request);
  $async.Future<$0.CompInfo> getCompInfo(
      $grpc.ServiceCall call, $0.CompInfo request);
}
