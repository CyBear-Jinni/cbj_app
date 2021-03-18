///
//  Generated code. Do not modify.
//  source: smart_connection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'smart_connection.pb.dart' as $0;
export 'smart_connection.pb.dart';

class SmartServerClient extends $grpc.Client {
  static final _$firstSetup =
      $grpc.ClientMethod<$0.FirstSetupMessage, $0.CommendStatus>(
          '/SmartConnection.SmartServer/FirstSetup',
          ($0.FirstSetupMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$getCompInfo =
      $grpc.ClientMethod<$0.CommendStatus, $0.CompInfo>(
          '/SmartConnection.SmartServer/GetCompInfo',
          ($0.CommendStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CompInfo.fromBuffer(value));
  static final _$setCompInfo =
      $grpc.ClientMethod<$0.CompInfo, $0.CommendStatus>(
          '/SmartConnection.SmartServer/SetCompInfo',
          ($0.CompInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$setFirebaseAccountInformation =
      $grpc.ClientMethod<$0.FirebaseAccountInformation, $0.CommendStatus>(
          '/SmartConnection.SmartServer/SetFirebaseAccountInformation',
          ($0.FirebaseAccountInformation value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$getStatus =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.SmartDeviceStatus>(
          '/SmartConnection.SmartServer/GetStatus',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SmartDeviceStatus.fromBuffer(value));
  static final _$updateDeviceName =
      $grpc.ClientMethod<$0.SmartDeviceUpdateDetails, $0.CommendStatus>(
          '/SmartConnection.SmartServer/UpdateDeviceName',
          ($0.SmartDeviceUpdateDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$setOnDevice =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
          '/SmartConnection.SmartServer/SetOnDevice',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$setOffDevice =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
          '/SmartConnection.SmartServer/SetOffDevice',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$setBlindsUp =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
          '/SmartConnection.SmartServer/setBlindsUp',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$setBlindsDown =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
          '/SmartConnection.SmartServer/setBlindsDown',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));
  static final _$setBlindsStop =
      $grpc.ClientMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
          '/SmartConnection.SmartServer/setBlindsStop',
          ($0.SmartDeviceInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value));

  SmartServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CommendStatus> firstSetup(
      $0.FirstSetupMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$firstSetup, request, options: options);
  }

  $grpc.ResponseFuture<$0.CompInfo> getCompInfo($0.CommendStatus request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setCompInfo($0.CompInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCompInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setFirebaseAccountInformation(
      $0.FirebaseAccountInformation request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFirebaseAccountInformation, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.SmartDeviceStatus> getStatus(
      $0.SmartDeviceInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> updateDeviceName(
      $0.SmartDeviceUpdateDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDeviceName, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setOnDevice($0.SmartDeviceInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOnDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setOffDevice(
      $0.SmartDeviceInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOffDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setBlindsUp($0.SmartDeviceInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setBlindsUp, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setBlindsDown(
      $0.SmartDeviceInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setBlindsDown, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommendStatus> setBlindsStop(
      $0.SmartDeviceInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setBlindsStop, request, options: options);
  }
}

abstract class SmartServerServiceBase extends $grpc.Service {
  $core.String get $name => 'SmartConnection.SmartServer';

  SmartServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FirstSetupMessage, $0.CommendStatus>(
        'FirstSetup',
        firstSetup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FirstSetupMessage.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommendStatus, $0.CompInfo>(
        'GetCompInfo',
        getCompInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommendStatus.fromBuffer(value),
        ($0.CompInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CompInfo, $0.CommendStatus>(
        'SetCompInfo',
        setCompInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CompInfo.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.FirebaseAccountInformation, $0.CommendStatus>(
            'SetFirebaseAccountInformation',
            setFirebaseAccountInformation_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.FirebaseAccountInformation.fromBuffer(value),
            ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.SmartDeviceStatus>(
        'GetStatus',
        getStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.SmartDeviceStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SmartDeviceUpdateDetails, $0.CommendStatus>(
            'UpdateDeviceName',
            updateDeviceName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SmartDeviceUpdateDetails.fromBuffer(value),
            ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
        'SetOnDevice',
        setOnDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
        'SetOffDevice',
        setOffDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
        'setBlindsUp',
        setBlindsUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
        'setBlindsDown',
        setBlindsDown_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmartDeviceInfo, $0.CommendStatus>(
        'setBlindsStop',
        setBlindsStop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmartDeviceInfo.fromBuffer(value),
        ($0.CommendStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.CommendStatus> firstSetup_Pre($grpc.ServiceCall call,
      $async.Future<$0.FirstSetupMessage> request) async {
    return firstSetup(call, await request);
  }

  $async.Future<$0.CompInfo> getCompInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommendStatus> request) async {
    return getCompInfo(call, await request);
  }

  $async.Future<$0.CommendStatus> setCompInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CompInfo> request) async {
    return setCompInfo(call, await request);
  }

  $async.Future<$0.CommendStatus> setFirebaseAccountInformation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FirebaseAccountInformation> request) async {
    return setFirebaseAccountInformation(call, await request);
  }

  $async.Future<$0.SmartDeviceStatus> getStatus_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDeviceInfo> request) async {
    return getStatus(call, await request);
  }

  $async.Future<$0.CommendStatus> updateDeviceName_Pre($grpc.ServiceCall call,
      $async.Future<$0.SmartDeviceUpdateDetails> request) async {
    return updateDeviceName(call, await request);
  }

  $async.Future<$0.CommendStatus> setOnDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDeviceInfo> request) async {
    return setOnDevice(call, await request);
  }

  $async.Future<$0.CommendStatus> setOffDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDeviceInfo> request) async {
    return setOffDevice(call, await request);
  }

  $async.Future<$0.CommendStatus> setBlindsUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDeviceInfo> request) async {
    return setBlindsUp(call, await request);
  }

  $async.Future<$0.CommendStatus> setBlindsDown_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDeviceInfo> request) async {
    return setBlindsDown(call, await request);
  }

  $async.Future<$0.CommendStatus> setBlindsStop_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmartDeviceInfo> request) async {
    return setBlindsStop(call, await request);
  }

  $async.Future<$0.CommendStatus> firstSetup(
      $grpc.ServiceCall call, $0.FirstSetupMessage request);
  $async.Future<$0.CompInfo> getCompInfo(
      $grpc.ServiceCall call, $0.CommendStatus request);
  $async.Future<$0.CommendStatus> setCompInfo(
      $grpc.ServiceCall call, $0.CompInfo request);
  $async.Future<$0.CommendStatus> setFirebaseAccountInformation(
      $grpc.ServiceCall call, $0.FirebaseAccountInformation request);
  $async.Future<$0.SmartDeviceStatus> getStatus(
      $grpc.ServiceCall call, $0.SmartDeviceInfo request);
  $async.Future<$0.CommendStatus> updateDeviceName(
      $grpc.ServiceCall call, $0.SmartDeviceUpdateDetails request);
  $async.Future<$0.CommendStatus> setOnDevice(
      $grpc.ServiceCall call, $0.SmartDeviceInfo request);
  $async.Future<$0.CommendStatus> setOffDevice(
      $grpc.ServiceCall call, $0.SmartDeviceInfo request);
  $async.Future<$0.CommendStatus> setBlindsUp(
      $grpc.ServiceCall call, $0.SmartDeviceInfo request);
  $async.Future<$0.CommendStatus> setBlindsDown(
      $grpc.ServiceCall call, $0.SmartDeviceInfo request);
  $async.Future<$0.CommendStatus> setBlindsStop(
      $grpc.ServiceCall call, $0.SmartDeviceInfo request);
}
