import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettingsPageOfSmartTvs extends StatelessWidget {
  SettingsPageOfSmartTvs({required this.roomEntity}) {
    // for (final SmartRoomObject smartRoomObject in rooms) {
    //   for (final SmartDeviceObject smartSwitchObject
    //       in smartRoomObject.getSmartTvs()) {
    //     allSmartDeviceSwitchDevices.add(smartSwitchObject);
    //   }
    // }
  }

  final RoomEntity roomEntity;
  final List<GenericSwitchDE> allSmartDeviceSwitchDevices = <GenericSwitchDE>[];

  @override
  Widget build(BuildContext context) {
    Widget tile(String roomName, String switchName) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Icon(MdiIcons.lightSwitch),
            ),
            title: Text(
              'Name:_',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ).tr(args: <String>[switchName]),
            subtitle: Text(
              'Room:_',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ).tr(args: <String>[roomName]),
            trailing: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.pen,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
              onPressed: () {},
            ),
          ),
          Divider(
            color: Theme.of(context).textTheme.bodyLarge!.color,
          ),
        ],
      );
    }

    void backButtonFunction(BuildContext context) {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        //  FontAwesomeIcons.plus,
        onPressed: () async {},
        child: const FaIcon(Icons.add),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: const <double>[0, 0, 0, 1],
            colors: <Color>[
              Theme.of(context).primaryColor,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            TopNavigationBar(
              pageName: 'SmartTvs Settings',
              rightIcon: null,
              rightIconFunction: () {},
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(index.toString()),
                    onDismissed: (DismissDirection direction) {
                      if (direction == DismissDirection.endToStart) {
                        logger.w('Delete the card');
                      }
                    },
                    background: Container(
                      color: Colors.red,
                    ),
                    child: tile(
                      roomEntity.cbjEntityName.getOrCrash(),
                      allSmartDeviceSwitchDevices[index]
                          .cbjEntityName
                          .getOrCrash()!,
                    ),
                  );
                },
                itemCount: allSmartDeviceSwitchDevices.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
