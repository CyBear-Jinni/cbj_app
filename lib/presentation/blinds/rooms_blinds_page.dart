import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/blinds/blinds_watcher/blinds_watcher_bloc.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/blinds/settings_page_of_blinds.dart';
import 'package:cybear_jinni/presentation/blinds/widgets/rooms_blinds_widget.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Blinds page that will call the blind widget file and add background
/// and scaffold for it
class RoomsBlindsPage extends StatelessWidget {
  const RoomsBlindsPage(
      {this.showDevicesOnlyFromRoomId, this.roomColorGradiant});

  /// If it have value will only show blinds in this room
  final String? showDevicesOnlyFromRoomId;
  final List<Color>? roomColorGradiant;

  void cogFunction(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => SettingsPageOfBlinds()));
  }

  void backButtonFuntion(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BlindsWatcherBloc>(
          create: (context) => getIt<BlindsWatcherBloc>()
            ..add(const BlindsWatcherEvent.watchAllStarted()),
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
                    context.router.replace(const SignInRoute()),
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
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: BacgroundGradient.getBacground(context),
            ),
            child: Column(
              children: [
                TopNavigationBar(
                  'Blinds',
                  Icons.more_vert,
                  cogFunction,
                  leftIcon: FontAwesomeIcons.arrowLeft,
                  leftIconFunction: backButtonFuntion,
                  rightSecondIcon: FontAwesomeIcons.search,
                  rightSecondFunction: () {},
                ),
                Expanded(
                  child: RoomsBlindsWidget(
                      showDevicesOnlyFromRoomId!, roomColorGradiant!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
