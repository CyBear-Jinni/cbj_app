import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/application/switches/switches_watcher/switches_watcher_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/core/types_to_pass.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/switches/settings_page_of_switches.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/switches/widgets/rooms_switches_widget.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Switches page that will call the lamps widgets file and add background
/// and scaffold for it
@RoutePage()
class RoomsSwitchesPage extends StatelessWidget {
  const RoomsSwitchesPage({
    required this.roomEntity,
    this.roomColorGradiant,
  });

  /// If it have value will only show switches in this room
  final RoomEntity roomEntity;
  final ListOfColors? roomColorGradiant;

  void cogFunction(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => SettingsPageOfSwitches(
          roomEntity: roomEntity,
        ),
      ),
    );
  }

  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SwitchesWatcherBloc>(
          create: (context) => getIt<SwitchesWatcherBloc>()
            ..add(const SwitchesWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<DeviceActorBloc>(
          create: (context) => getIt<DeviceActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
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
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.black,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: BackgroundGradient.getBackground(context),
            ),
            child: Column(
              children: [
                TopNavigationBar(
                  pageName: 'Switches',
                  rightIcon: null,
                  rightIconFunction: cogFunction,
                  leftIcon: FontAwesomeIcons.arrowLeft,
                  leftIconFunction: backButtonFunction,
                  backgroundColor: roomColorGradiant?.listOfColors?.last,
                ),
                Expanded(
                  child: RoomsSwitchesWidget(
                    roomEntity,
                    roomColorGradiant!.listOfColors!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
