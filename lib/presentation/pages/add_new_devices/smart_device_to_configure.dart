import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class SmartDeviceToConfigure extends StatelessWidget {
  const SmartDeviceToConfigure(this.smartDeviceObject);

  final GenericLightDE smartDeviceObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.black54,
      child: Column(
        children: <Widget>[
          SmartDeviceTypeAndToggleBar(smartDeviceObject),
          TextAtom(
            'Device Name: ${smartDeviceObject.cbjEntityName.getOrCrash()}',
            style: const TextStyle(fontSize: 21),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.lightGreen,
              ),
            ),
            onPressed: () {},
            child: TextAtom(
              'Edit device',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
