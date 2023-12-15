import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_blinds_entity/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class BlindMolecule extends StatefulWidget {
  const BlindMolecule(this.entity);

  final GenericBlindsDE entity;

  @override
  State<BlindMolecule> createState() => _BlindMoleculeState();
}

class _BlindMoleculeState extends State<BlindMolecule> {
  Future<void> _moveUpAllBlinds() async {
    FlushbarHelper.createLoading(
      message: 'Pulling_Up_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityActions.moveUp);
    // IDeviceRepository.instance.moveUpStateDevices(devicesId: blindsIdToTurnUp);
  }

  void setEntityState(EntityActions action) {
    final VendorsAndServices? vendor =
        widget.entity.cbjDeviceVendor.vendorsAndServices;
    if (vendor == null) {
      return;
    }

    IPhoneAsHub.instance.setEntityState(
      cbjUniqeId: widget.entity.deviceCbjUniqueId.getOrCrash(),
      vendor: vendor,
      property: EntityProperties.blindsSwitchState,
      actionType: action,
    );
  }

  Future<void> _stopAllBlinds(List<String> blindsIdToStop) async {
    FlushbarHelper.createLoading(
      message: 'Stopping_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityActions.stop);

    // IDeviceRepository.instance.stopStateDevices(devicesId: blindsIdToStop);
  }

  Future<void> _moveDownAllBlinds(List<String> blindsIdToTurnDown) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_down_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityActions.moveDown);

    // IDeviceRepository.instance
    // .moveDownStateDevices(devicesId: blindsIdToTurnDown);
  }

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    final deviceState = widget.entity.entityStateGRPC.getOrCrash();
    final deviceAction = widget.entity.blindsSwitchState!.getOrCrash();

    // bool toggleValue = false;
    // Color toggleColor = Colors.blueGrey;

    if (deviceAction == EntityActions.on.toString()) {
      // toggleValue = true;
      if (deviceState == EntityStateGRPC.ack.toString()) {
        // toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == EntityStateGRPC.ack.toString()) {
        // toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 10,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.brown,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: () {
                _moveDownAllBlinds(
                  [widget.entity.cbjDeviceVendor.getOrCrash()],
                );
              },
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.arrowDown,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Down',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: () {
                _stopAllBlinds(
                  [widget.entity.cbjDeviceVendor.getOrCrash()],
                );
              },
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.solidHand,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Stop',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.amber,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: () {
                _moveUpAllBlinds();
              },
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.arrowUp,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Up',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
