import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/domain/manage_network/i_manage_network_repository.dart';
import 'package:cybearjinni/infrastructure/app_commands.dart';
import 'package:cybearjinni/infrastructure/mqtt.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_flutter/hive_flutter.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    initilizeApp();
  }

  Future initilizeApp() async {
    SystemCommandsBaseClassD.instance = AppCommands();
    await Hive.initFlutter();
    IcSynchronizer.initializeIntegrationsController();
    await IManageNetworkRepository.instance.loadWifi();
    ConnectionsService.setCurrentConnectionType(ConnectionType.appAsHub);
    _navigate();

    // TODO: Only here so that app will not crash
    MqttServerRepository();
    NodeRedRepository();
  }

  void _navigate() {
    if (kIsWeb || Platform.isLinux || Platform.isWindows) {
      context.router.replace(const ConnectToHubRoute());
      return;
    }
    context.router.replace(const IntroductionRouteRoute());
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: const [0.06, 0.9],
            colors: [
              HexColor('#ca6ce3'),
              HexColor('#aa5fe4'),
            ],
          ),
        ),
        child: const Center(
          child: ImageAtom(
            'assets/cbj_logo.png',
            hero: 'full_logo',
          ),
        ),
      ),
    );
  }
}
