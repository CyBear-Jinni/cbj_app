import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/domain/local_db/i_local_db_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/node_red/node_red_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/system_commands/system_commands_manager_d.dart';
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
    await Hive.initFlutter();
    AppCommands();
    await Future.value([
      IDbRepository.instance.initializeDb(isFlutter: true),
      ILocalDbRepository.instance.asyncConstructor(),
      ISavedDevicesRepo.instance.setUpAllFromDb(),
    ]);
    MqttServerRepository();
    PhoneCommandsD();
    SystemCommandsManager();
    NodeRedRepository();
    ConnectionsService.instance;
    _navigate();
  }

  Future _navigate() async {
    (await ILocalDbRepository.instance.getHubEntityNetworkName()).fold(
      (l) async {
        if (kIsWeb || Platform.isLinux || Platform.isWindows) {
          return context.router.replace(const ConnectToHubRoute());
        }
        return context.router.replace(const IntroductionRouteRoute());
      },
      (r) => context.router.replace(const HomeRoute()),
    );
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
