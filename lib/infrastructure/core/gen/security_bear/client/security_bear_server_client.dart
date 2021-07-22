import 'dart:async';

import 'package:cybear_jinni/domain/create_home/i_create_home_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
// import 'package:cybear_jinni/infrastructure/core/constant_credentials.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/client/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:grpc/grpc.dart';

class SecurityBearServerClient {
  static Future<SBCommendStatus> setWiFisInformation(
    String deviceIp,
    String firstWiFiName,
    String firstWiFiPassword,
    String secondWiFiName,
    String secondWiFiPassword,
  ) async {
    final ClientChannel channel = createSmartServerClient(deviceIp);
    final SecurityBearClient stub = SecurityBearClient(channel);
    SBCommendStatus responseSBCommendStatus = SBCommendStatus();

    final WiFiInformation wiFiInformationFirst = WiFiInformation()
      ..wiFiName = firstWiFiName
      ..wiFiPassword = firstWiFiPassword;

    final WiFiInformation wiFiInformationSecond = WiFiInformation()
      ..wiFiName = secondWiFiName
      ..wiFiPassword = secondWiFiPassword;

    final SecurityBearSetup securityBearSetup = SecurityBearSetup()
      ..wiFiFirstPriority = wiFiInformationFirst
      ..wiFiSecondPriority = wiFiInformationSecond;

    try {
      responseSBCommendStatus =
          await stub.setWiFiInformation(securityBearSetup);

      print('Greeter client received: ${responseSBCommendStatus.toString()}');
//      await channel.shutdown();
      return responseSBCommendStatus;
    } catch (e) {
      print('Caught error: $e');
    }
//    await channel.shutdown();
    return SBCommendStatus()..success = false;
  }

  static Future<SBCommendStatus?> setFirebaseAccountInformation(
      String deviceIp, ManageNetworkEntity secondWifiEntity) async {
    final ClientChannel channel = createSmartServerClient(deviceIp);
    final SecurityBearClient stub = SecurityBearClient(channel);
    SBCommendStatus responseSBCommendStatus = SBCommendStatus();
    //
    // final SBFirebaseAccountInformation sbFirebaseAccountInformation =
    //     SBFirebaseAccountInformation()
    //       ..fireBaseProjectId = ConstantCredentials.fireBaseProjectId
    //       ..fireBaseApiKey = ConstantCredentials.fireBaseApiKey
    //       ..userEmail = ''
    //       ..userPassword = '';

    try {
      final ManageNetworkEntity manageFirstNetworkEntity =
          (await getIt<ICreateHomeRepository>().getFirstWifi()).getOrElse(
              () => throw "Can't get current home first WiFi from Firestore");

      final SecurityBearSetup securityBearSetup = SecurityBearSetup()
        ..wiFiFirstPriority = WiFiInformation(
            wiFiName: manageFirstNetworkEntity.name!.getOrCrash(),
            wiFiPassword: manageFirstNetworkEntity.pass!.getOrCrash())
        ..wiFiSecondPriority = WiFiInformation(
            wiFiName: secondWifiEntity.name!.getOrCrash(),
            wiFiPassword: secondWifiEntity.pass!.getOrCrash());
      //
      // final SBFirebaseAccountAndSecurityBearSetup
      //     sBFirebaseAccountAndSecurityBearSetup =
      //     SBFirebaseAccountAndSecurityBearSetup()
      //       ..sBFirebaseAccountInformation = sbFirebaseAccountInformation
      //       ..securityBearSetup = securityBearSetup;
      //
      // responseSBCommendStatus =
      //     await stub.setFirebaseAccountAndSecurityBearSetup(
      //         sBFirebaseAccountAndSecurityBearSetup);

      print('Greeter client received: ${responseSBCommendStatus.toString()}');
      await channel.shutdown();
      return responseSBCommendStatus;
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return null;
  }

  static ClientChannel createSmartServerClient(String deviceIp) {
    return ClientChannel(deviceIp,
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
