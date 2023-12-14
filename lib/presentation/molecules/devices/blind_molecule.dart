import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class BlindMolecule extends StatefulWidget {
  const BlindMolecule(this._deviceEntity);

  final GenericBlindsDE _deviceEntity;

  @override
  State<BlindMolecule> createState() => _BlindMoleculeState();
}

class _BlindMoleculeState extends State<BlindMolecule> {
  Future<void> _moveUpAllBlinds(List<String> blindsIdToTurnUp) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_Up_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.moveUpStateDevices(devicesId: blindsIdToTurnUp);
  }

  Future<void> _stopAllBlinds(List<String> blindsIdToStop) async {
    FlushbarHelper.createLoading(
      message: 'Stopping_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.stopStateDevices(devicesId: blindsIdToStop);
  }

  Future<void> _moveDownAllBlinds(List<String> blindsIdToTurnDown) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_down_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance
        .moveDownStateDevices(devicesId: blindsIdToTurnDown);
  }

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    final deviceState = widget._deviceEntity.entityStateGRPC.getOrCrash();
    final deviceAction = widget._deviceEntity.blindsSwitchState!.getOrCrash();

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
                  [widget._deviceEntity.cbjDeviceVendor.getOrCrash()],
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
                  [widget._deviceEntity.cbjDeviceVendor.getOrCrash()],
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
                _moveUpAllBlinds(
                  [widget._deviceEntity.cbjDeviceVendor.getOrCrash()],
                );
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
