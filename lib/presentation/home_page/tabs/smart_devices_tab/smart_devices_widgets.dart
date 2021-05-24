import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/application/devices/device_watcher/device_watcher_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/settings_page_of_smart_devices.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/smart_devices_by_rooms.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesWidgets extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: '➕ Add Devices',
            onPressed: () {
              ExtendedNavigator.of(context).push(Routes.connectToHomeWifiPage);
            },
            textStyle: const TextStyle(color: Colors.green, fontSize: 23)),
        BottomSheetAction(
            title: '⚙️ Devices Settings',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SettingsPageSmartDevices()));
            },
            textStyle: const TextStyle(color: Colors.blueGrey, fontSize: 23)),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void rightSecondFunction(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeviceWatcherBloc>(
          create: (context) => getIt<DeviceWatcherBloc>()
            ..add(const DeviceWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<DeviceActorBloc>(
          create: (context) => getIt<DeviceActorBloc>(),
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
          BlocListener<DeviceActorBloc, DeviceActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: 'Error',
                    // state.devicesFailure.map(
                    //   unexpected: (_) =>
                    //       'Unexpected error occured while deleting,' +
                    //       'please contact support.',
                    //   insufficientPermission: (_) =>
                    //       'Insufficient permissions ❌',
                    //   unableToUpdate: (_) => 'Impossible error',
                    // ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Column(
          children: <Widget>[
            TopNavigationBar(
              'Devices',
              Icons.more_vert,
              userCogFunction,
              leftIcon: FontAwesomeIcons.userCog,
              leftIconFunction: leftIconFunction,
              rightSecondIcon: FontAwesomeIcons.search,
              rightSecondFunction: rightSecondFunction,
            ),
            Expanded(
              child: SmartDevicesByRooms(),
            ),
          ],
        ),
      ),
    );
  }
}
