import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/cbj_comp/cbj_comp_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/scan_for_new_cbj_comps/widgets/scan_for_new_cbj_comps_widget.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScanForNewCBJCompsPage extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: '➕ Add User',
            onPressed: () {
              ExtendedNavigator.of(context).push(Routes.addUserToHomePage);
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
        BlocProvider<CBJCompBloc>(
          create: (context) =>
              getIt<CBJCompBloc>()..add(const CBJCompEvent.initialized()),
        ),
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
          ],
          child: Scaffold(
            body: Container(
              color: Colors.black87,
              child: Column(
                children: [
                  TopNavigationBar(
                    'Add CBJ Devices',
                    Icons.more_vert,
                    userCogFunction,
                    leftIcon: FontAwesomeIcons.arrowLeft,
                    leftIconFunction: leftIconFunction,
                  ),
                  Expanded(
                    child: ScanForNewCBJCompsWidget(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
