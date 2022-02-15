import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/software_info/software_info_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:cybear_jinni/presentation/software_info/widgets/software_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SoftwareInfoPage extends StatelessWidget {
  /// Execute when software nfo press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '➕ Add software nfo',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: () {
            // context.router.push(const AddUserToHomeRoute());
          },
        ),
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
        BlocProvider<SoftwareInfoBloc>(
          create: (context) => getIt<SoftwareInfoBloc>()
            ..add(const SoftwareInfoEvent.initialized()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    context.router.replace(const ConnectToHubRoute()),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.black,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          body: Container(
            color: Colors.black87,
            child: Column(
              children: [
                TopNavigationBar(
                  pageName: 'Software Info',
                  rightIcon: null,
                  rightIconFunction: userCogFunction,
                  leftIcon: FontAwesomeIcons.arrowLeft,
                  leftIconFunction: leftIconFunction,
                ),
                Expanded(
                  child: SoftwareInfoWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
