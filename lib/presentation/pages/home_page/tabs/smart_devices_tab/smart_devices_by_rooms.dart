import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/application/devices/device_watcher/device_watcher_bloc.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/lights/widgets/critical_light_failure_display_widget.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/rooms_widgets/rooms_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SmartDevicesByRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceWatcherBloc, DeviceWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 30,
              ),
              TextAtom(
                'Searching for CyBear Jinni Hub',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          loadSuccess: (state) {
            if (state.devices.size != 0) {
              final Map<String?, List<DeviceEntityAbstract>>
                  tempDevicesByRooms = <String, List<DeviceEntityAbstract>>{};

              final List<DeviceEntityAbstract?> devicesList =
                  state.devices.iter.toList();

              return SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    if (tempDevicesByRooms.length == 1)
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        child: ImageAtom(
                          'assets/cbj_logo.png',
                          width: 200.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: <Widget>[
                          TextAtom(
                            'Areas',
                            style: TextStyle(
                              fontSize: 35,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3
                                ..color = Colors.black.withOpacity(0.2),
                            ),
                          ),
                          TextAtom(
                            'Areas',
                            style: TextStyle(
                              fontSize: 35,
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RoomsListViewWidget(
                      tempDevicesByRooms: tempDevicesByRooms,
                      devicesList: devicesList,
                      roomsList: state.rooms.iter.toList(),
                    ),
                  ],
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: 'Add new device by pressing the plus button',
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blueGrey,
                    textColor: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16.0,
                  );
                },
                child: SingleChildScrollView(
                  reverse: true,
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        alignment: Alignment.center,
                        child: ImageAtom(
                          'assets/cbj_logo.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: TextAtom(
                          'Devices list is empty',
                          style: TextStyle(
                            fontSize: 30,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
          loadFailure: (state) {
            return CriticalLightFailureDisplay(
              failure: state.devicesFailure,
            );
          },
          error: (Error value) {
            return const TextAtom('Error');
          },
        );
      },
    );
  }
}
