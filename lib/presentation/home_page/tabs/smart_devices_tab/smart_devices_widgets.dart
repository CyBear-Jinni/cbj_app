import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/application/devices/device_watcher/device_watcher_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/route_names.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/settings_page_of_smart_devices.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/smart_devices_by_rooms.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesWidgets extends StatelessWidget {
  final Map<String, AssetImage> _symbolsImageList = {
    lightsPage.tr(): const AssetImage('assets/symbols/light_bulb_drawing.png'),
    blindsPage.tr(): const AssetImage('assets/symbols/blinds.jpg'),
    'A/C'.tr(): const AssetImage('assets/symbols/air_conditioner.jpg'),
    'Medical'.tr(): const AssetImage('assets/symbols/doctor.jpg'),
    'Phones'.tr(): const AssetImage('assets/symbols/phone1.jpg'),
    'Speakers'.tr(): const AssetImage('assets/symbols/speakers.jpg'),
  };

  final List<MaterialColor> colorList = Colors.primaries;

  List<Widget> smartDevice(BuildContext context) {
    return _symbolsImageList.keys
        .map(
          (String element) => GestureDetector(
            onTap: () {
              print('you clicked $element');
              if (element.toString() == lightsPage.tr()) {
                ExtendedNavigator.of(context).push(Routes.lightsInTheRoomPage);
              } else if (element.toString() == blindsPage.tr()) {
                ExtendedNavigator.of(context).push(Routes.roomsBlindsPage);
              } else {
                Fluttertoast.showToast(
                    msg: element.toString(),
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blueGrey,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                image: DecorationImage(
                    image: _symbolsImageList[element], fit: BoxFit.fitHeight),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).textTheme.bodyText1.color,
                    width: 0.6,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Text(
                              element,
                              style: TextStyle(
                                fontSize: 25,
                                //color: Colors.blue – will not work
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 4
                                  ..color = Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              element,
                              style: TextStyle(
                                fontSize: 25,
                                color:
                                    Theme.of(context).textTheme.bodyText1.color,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        .toList();
  }

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
