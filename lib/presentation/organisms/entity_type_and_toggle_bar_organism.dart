import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show bar of device type with toggle switch for light
class EntityTypeAndToggleBar extends StatelessWidget {
  const EntityTypeAndToggleBar(this.entity);

  final GenericLightDE entity;

  @override
  Widget build(BuildContext context) {
    final EntityTypes deviceType =
        EntityUtils.stringToDt(entity.entityTypes.getOrCrash())!;
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
          translationArgs: [EntityUtils.dTToString(deviceType)],
        ),
        if (deviceType == EntityTypes.light)
          SizedBox(
            width: 100,
            child: SmartLightMolecule(
              entity,
            ), // The actual render of the device
          )
        else
          Container(),
      ],
    );
  }
}
