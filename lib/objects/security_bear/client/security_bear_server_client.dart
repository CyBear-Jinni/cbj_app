import 'dart:async';

import 'package:cybear_jinni/objects/security_bear/client/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class SecurityBearServerClient {
  static Future<SBCommendStatus> setWiFisInformation(
      String deviceIp, String wiFiName, String wiFiPassword) async {
    final ClientChannel channel = createSmartServerClient(deviceIp);
    final SecurityBearClient stub = SecurityBearClient(channel);
    SBCommendStatus responseSBCommendStatus = SBCommendStatus();

    final WiFiInformation wiFiInformationFirst = WiFiInformation()
      ..wiFiName = ''
      ..wiFiPassword = '';

    final WiFiInformation wiFiInformationSecond = WiFiInformation()
      ..wiFiName = wiFiName
      ..wiFiPassword = wiFiPassword;

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
    return null;
  }

  static Future<SBCommendStatus> setFirebaseAccountInformation(
      String deviceIp) async {
    final ClientChannel channel = createSmartServerClient(deviceIp);
    final SecurityBearClient stub = SecurityBearClient(channel);
    SBCommendStatus responseSBCommendStatus = SBCommendStatus();

    final SBFirebaseAccountInformation sbFirebaseAccountInformation =
        SBFirebaseAccountInformation()
          ..fireBaseProjectId = ''
          ..fireBaseApiKey = ''
          ..userEmail = ''
          ..userPassword = '';

    try {
      responseSBCommendStatus = await stub
          .setFirebaseAccountInformation(sbFirebaseAccountInformation);

      print('Greeter client received: ${responseSBCommendStatus.toString()}');
//      await channel.shutdown();
      return responseSBCommendStatus;
    } catch (e) {
      print('Caught error: $e');
    }
//    await channel.shutdown();
    return null;
  }

  static ClientChannel createSmartServerClient(String deviceIp) {
    return ClientChannel(deviceIp,
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
