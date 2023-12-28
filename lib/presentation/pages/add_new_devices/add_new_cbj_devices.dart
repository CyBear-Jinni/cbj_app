import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// This page will show all the CyBear Jinni devices that have connected to the
/// hotspot of the app device.
class AddNewCBJDevices extends StatefulWidget {
  static List<GenericLightDE> newDevicesList = [];
  static List<String> newDevicesStringList = <String>[];

  @override
  State<StatefulWidget> createState() {
    return _AddNewCBJDevices();
  }
}

class _AddNewCBJDevices extends State<AddNewCBJDevices> {
  _AddNewCBJDevices() {
    // final CreateTheCBJAppServer createTheCBJAppServer = CreateTheCBJAppServer();
    // StreamController<SmartDeviceInfo> smartDeviceStream;
    //
    // createTheCBJAppServer.createServer(smartDeviceStream);
  }

  @override
  void initState() {
    super.initState();
    setStateTimer();
  }

  // List<SmartDeviceObject> newDevicesList = [];

  void setStateTimer() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        // newDevicesList = AddNewCBJDevices.newDevicesList;
      });
    });
  }

  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            TopBarMolecule(
              pageName: 'Add New CyBear Jinni Devices',
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),

            const SizedBox(
              height: 50,
            ),

            const TextAtom(
              "Can't find any devices",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            // StreamBuilder(),
            // Expanded(
            //   child: ListView(
            //     children: newDevicesList.map((SmartDeviceObject newDevice) {
            //       return SmartDeviceToConfigure(newDevice);
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
