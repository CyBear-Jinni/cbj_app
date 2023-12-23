import 'dart:collection';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_dimmable_light_entity/generic_dimmable_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_rgbw_light_entity/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/connections_service.dart';
import 'package:cybear_jinni/infrastructure/core/logger.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightsInTheRoomBlock extends StatefulWidget {
  const LightsInTheRoomBlock({
    required this.roomEntity,
    required this.lightsInRoom,
    required this.entities,
    required this.dimmableLightsInRoom,
    required this.rgbwLightsInRoom,
    required this.roomColorGradiant,
  });

  factory LightsInTheRoomBlock.withAbstractDevice({
    required RoomEntity roomEntity,
    required List<DeviceEntityBase> entities,
    required ListOfColors tempRoomColorGradiant,
  }) {
    final List<GenericLightDE> tempLightsInRoom = [];
    final List<GenericDimmableLightDE> tempDimmableLightsInRoom = [];
    final List<GenericRgbwLightDE> tempRgbwLightsInRoom = [];

    for (final element in entities) {
      if (element.entityTypes.getOrCrash() == EntityTypes.light.toString()) {
        tempLightsInRoom.add(element as GenericLightDE);
      } else if (element.entityTypes.getOrCrash() ==
          EntityTypes.dimmableLight.toString()) {
        tempDimmableLightsInRoom.add(element as GenericDimmableLightDE);
      } else if (element.entityTypes.getOrCrash() ==
          EntityTypes.rgbwLights.toString()) {
        tempRgbwLightsInRoom.add(element as GenericRgbwLightDE);
      } else {
        logger.e('Unsupported light type ${element.entityTypes.getOrCrash()}');
      }
    }

    return LightsInTheRoomBlock(
      roomEntity: roomEntity,
      lightsInRoom: tempLightsInRoom,
      entities: entities,
      dimmableLightsInRoom: tempDimmableLightsInRoom,
      rgbwLightsInRoom: tempRgbwLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericLightDE> lightsInRoom;
  final List<GenericDimmableLightDE> dimmableLightsInRoom;
  final List<GenericRgbwLightDE> rgbwLightsInRoom;
  final ListOfColors roomColorGradiant;
  final List<DeviceEntityBase> entities;

  @override
  State<LightsInTheRoomBlock> createState() => _LightsInTheRoomBlockState();
}

class _LightsInTheRoomBlockState extends State<LightsInTheRoomBlock> {
  Future<void> _turnOffAllLights() async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all lights',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityActions.off);
  }

  Future<void> _turnOnAllLights() async {
    FlushbarHelper.createLoading(
      message: 'Turning On all lights',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityActions.on);
  }

  void setEntityState(EntityActions action) {
    final VendorsAndServices? vendor =
        widget.entities.first.cbjDeviceVendor.vendorsAndServices;
    if (vendor == null) {
      return;
    }

    ConnectionsService.instance.setEntityState(
      uniqueIdByVendor: getUniqueIdByVendor(),
      property: EntityProperties.lightSwitchState,
      actionType: action,
    );
  }

  HashMap<VendorsAndServices, HashSet<String>>? _uniqueIdByVendor;

  HashMap<VendorsAndServices, HashSet<String>> getUniqueIdByVendor() {
    if (_uniqueIdByVendor != null) {
      return _uniqueIdByVendor!;
    }

    final HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor =
        HashMap();
    for (final DeviceEntityBase? element in widget.entities) {
      final VendorsAndServices? vendor =
          element?.cbjDeviceVendor.vendorsAndServices;

      if (vendor == null) {
        continue;
      }
      final HashSet<String> idsInVendor =
          uniqueIdByVendor[vendor] ??= HashSet<String>();

      final String deviceCbjUniqueId = element!.deviceCbjUniqueId.getOrCrash();

      idsInVendor.add(deviceCbjUniqueId);

      uniqueIdByVendor.addEntries([MapEntry(vendor, idsInVendor)]);
    }
    return _uniqueIdByVendor = uniqueIdByVendor;
  }

  @override
  Widget build(BuildContext context) {
    String deviceText;

    final int totalLightsInTheRoom = widget.lightsInRoom.length +
        widget.dimmableLightsInRoom.length +
        widget.rgbwLightsInRoom.length;

    if (totalLightsInTheRoom == 1) {
      if (widget.lightsInRoom.isNotEmpty) {
        deviceText = widget.lightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else if (widget.dimmableLightsInRoom.isNotEmpty) {
        deviceText =
            widget.dimmableLightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else if (widget.rgbwLightsInRoom.isNotEmpty) {
        deviceText = widget.rgbwLightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else {
        logger.w('Missing a line here');
        deviceText = 'Light';
      }
    } else {
      deviceText =
          '_Lights'.tr(args: [widget.roomEntity.cbjEntityName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        context.router.push(
          DevicesInRoomRoute(
            entityTypes: const {
              EntityTypes.light,
              EntityTypes.rgbLights,
              EntityTypes.rgbwLights,
              EntityTypes.rgbcctLights,
            },
            roomEntity: widget.roomEntity,
            roomColorGradiant: widget.roomColorGradiant,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.03),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: TextAtom('')),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Transform.scale(
                        scale: 1.2,
                        child: const CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.solidLightbulb,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (totalLightsInTheRoom > 1)
                  Expanded(
                    child: Container(
                      height: 55,
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 28,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .color!
                                .withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextAtom(
                          totalLightsInTheRoom.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  const Expanded(child: TextAtom('')),
              ],
            ),
            const SizedBox(height: 5),
            Stack(
              children: <Widget>[
                AutoSizeText(
                  deviceText,
                  maxLines: 1,
                  style: TextStyle(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 0.8
                      ..color = Colors.black38,
                  ),
                ),
                AutoSizeText(
                  deviceText,
                  maxLines: 1,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.grey.withOpacity(0.6),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(width: 0.2),
                    ),
                  ),
                  onPressed: _turnOffAllLights,
                  child: TextAtom(
                    'Off',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ),
                TextAtom(
                  '·',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.grey.withOpacity(0.6),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(width: 0.2),
                    ),
                  ),
                  onPressed: _turnOnAllLights,
                  child: TextAtom(
                    'On',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
