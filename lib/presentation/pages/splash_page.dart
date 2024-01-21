import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cbj_smart_device_flutter/commands/flutter_commands.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/domain/i_local_db_repository.dart';
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
    // TODO: can we remove
    await Hive.initFlutter();
    AppCommands();
    // TODO: can we remove
    await Future.value([
      IDbRepository.instance.initializeDb(isFlutter: true),
      ILocalDbRepository.instance.asyncConstructor(),
      // ISavedDevicesRepo.instance.setUpAllFromDb(),
    ]);
    // TODO: can we remove
    MqttServerRepository();
    // TODO: Same as App Command?
    PhoneCommandsD();
    SystemCommandsManager();
    // TODO: can we remove
    NodeRedRepository();
    ConnectionsService.instance;
    _navigate();
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
