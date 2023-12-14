import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/device_type_enums.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show bar of device type with toggle switch for light
class SmartDeviceTypeAndToggleBar extends StatelessWidget {
  const SmartDeviceTypeAndToggleBar(this._smartDeviceObject);

  final GenericLightDE _smartDeviceObject;

  @override
  Widget build(BuildContext context) {
    final EntityTypes deviceType =
        EnumHelperCbj.stringToDt(_smartDeviceObject.entityTypes.getOrCrash())!;
    return Row(
      children: <Widget>[
        if (deviceType == EntityTypes.light)
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              radius: 16,
              child: FaIcon(FontAwesomeIcons.solidLightbulb),
            ),
          ),
        if (deviceType == EntityTypes.blinds)
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              radius: 16,
              child: FaIcon(FontAwesomeIcons.satelliteDish),
            ),
          ),
        TextAtom(
          'Device_type:_',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).textTheme.bodyLarge!.color,
            backgroundColor: Colors.blueGrey
//                color: (Theme.of(context).textTheme.bodyLarge!.color)!,
            ,
          ),
          translationArgs: [EnumHelperCbj.dTToString(deviceType)],
        ),
        if (deviceType == EntityTypes.light)
          SizedBox(
            width: 100,
            child: SmartLightMolecule(
              _smartDeviceObject,
            ), // The actual render of the device
          )
        else
          Container(),
      ],
    );
  }
}
