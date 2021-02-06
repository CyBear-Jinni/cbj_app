import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/initialize_home/initialize_home_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialProcess extends StatelessWidget {
  InitialProcess();

  @override
  Widget build(BuildContext context) {
    // context
    //     .read<InitializeHomeBloc>()
    //     .add(InitializeHomeEvent.initializingNewHome(),
    // validator: (_) => context
    //     .read<InitializeHomeBloc().state
    //     .value
    //     .fold(
    // (f) => f.maybeMap(
    // invalidEmail: (_) => 'Invalid Email',
    // orElse: () => null),
    // (r) => null),
    //

    return BlocConsumer<InitializeHomeBloc, InitializeHomeState>(
      listener: (context, InitializeHomeState state) {
        state.map(
          (value) => (v) {},
          loading: (loadingNow) {},
          error: (erroNow) => ExtendedNavigator.of(context)
              .replace(Routes.whereToLoginPageMinimal),
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
