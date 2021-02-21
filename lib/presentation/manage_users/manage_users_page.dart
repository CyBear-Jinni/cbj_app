import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/manage_users/manage_users_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/manage_users/widgets/manage_users_widget.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManageUsersPage extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: '➕ Add User',
            onPressed: () {
              ExtendedNavigator.of(context).push(Routes.addUserPage);
            },
            textStyle: const TextStyle(color: Colors.green, fontSize: 23)),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ManageUsersBloc>(
          create: (context) => getIt<ManageUsersBloc>()
            ..add(const ManageUsersEvent.initialized()),
        ),
        // BlocProvider<DeviceActorBloc>(
        //   create: (context) => getIt<DeviceActorBloc>(),
        // ),
      ],
      child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  unauthenticated: (_) =>
                      ExtendedNavigator.of(context).replace(Routes.signInPage),
                  orElse: () {},
                );
              },
            ),
            //   BlocListener<DeviceActorBloc, DeviceActorState>(
            //     listener: (context, state) {
            //       state.maybeMap(
            //         deleteFailure: (state) {
            //           FlushbarHelper.createError(
            //             duration: const Duration(seconds: 5),
            //             message: 'Error',
            //             // state.devicesFailure.map(
            //             //   unexpected: (_) =>
            //             //       'Unexpected error occured while deleting,' +
            //             //       'please contact support.',
            //             //   insufficientPermission: (_) =>
            //             //       'Insufficient permissions ❌',
            //             //   unableToUpdate: (_) => 'Impossible error',
            //             // ),
            //           ).show(context);
            //         },
            //         orElse: () {},
            //       );
            //     },
            //   ),
          ],
          child: Scaffold(
            body: Container(
              color: Colors.black87,
              child: Column(
                children: [
                  TopNavigationBar(
                    'Users',
                    Icons.more_vert,
                    userCogFunction,
                    leftIcon: FontAwesomeIcons.arrowLeft,
                    leftIconFunction: leftIconFunction,
                  ),
                  Expanded(
                    child: ManageUsersWidget(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
