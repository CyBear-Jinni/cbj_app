import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/initialize_home/initialize_home_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InitializeHomeBloc, InitializeHomeState>(
      listener: (context, InitializeHomeState state) {
        state.map(
          (value) => (v) {},
          loading: (loadingNow) {},
          error: (errorNow) {
            FlushbarHelper.createError(message: 'Error');
            ExtendedNavigator.of(context).replace(Routes.signInPage);
          },
          loaded: (_) => ExtendedNavigator.of(context).replace(Routes.homePage),
        );
      },
      builder: (context, state) {
        return Column(
          children: const [
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        );
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
