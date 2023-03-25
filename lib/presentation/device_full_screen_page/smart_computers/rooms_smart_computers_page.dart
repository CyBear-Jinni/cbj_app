import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/application/smart_computers/smart_computers_watcher/smart_computer_watcher_bloc.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/core/types_to_pass.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_computers/settings_page_of_smart_computers.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_computers/widgets/rooms_smart_computers_widget.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// SmartComputers page that will call the lamps widgets file and add background
/// and scaffold for it
@RoutePage()
class RoomsSmartComputersPage extends StatelessWidget {
  const RoomsSmartComputersPage({
    required this.roomEntity,
    this.roomColorGradiant,
  });

  /// If it have value will only show SmartComputers in this room
  final RoomEntity roomEntity;
  final ListOfColors? roomColorGradiant;

  void cogFunction(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => SettingsPageOfSmartComputers(
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
        BlocProvider<SmartComputersWatcherBloc>(
          create: (context) => getIt<SmartComputersWatcherBloc>()
            ..add(const SmartComputersWatcherEvent.watchAllStarted()),
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
                    context.router.replace(const ConnectToHubRoute()),
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
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.black,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: BacgroundGradient.getBacground(context),
            ),
            child: Column(
              children: [
                TopNavigationBar(
                  pageName: 'Smart Computers'.tr(),
                  rightIcon: null,
                  rightIconFunction: cogFunction,
                  leftIcon: FontAwesomeIcons.arrowLeft,
                  leftIconFunction: backButtonFunction,
                  backgroundColor: roomColorGradiant!.listOfColors!.last,
                ),
                Expanded(
                  child: RoomsSmartComputersWidget(
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
