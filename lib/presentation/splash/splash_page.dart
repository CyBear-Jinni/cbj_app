import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) async {
            return context.router.replace(const HomeRoute());
          },
          unauthenticated: (_) async {
            if (kIsWeb || Platform.isLinux) {
              return context.router.replace(const ConnectToHubRoute());
            }
            return context.router.replace(const IntroductionScreenRoute());
          },
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Image.asset(
            'assets/cbj_logo.png',
          ),
        ),
      ),
    );
  }
}
