import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository2.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    _navigate();
  }

  Future _navigate() async {
    (await ILocalDbRepository2.instance.getHubEntityNetworkName()).fold(
      (l) {
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
    return const Scaffold(
      body: Center(
        child: ImageAtom(
          'assets/cbj_logo.png',
        ),
      ),
    );
  }
}
