import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_computer_entity/generic_smart_computer_entity.dart';
import 'package:cybearjinni/domain/device/i_device_repository.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartComputerMolecule extends StatefulWidget {
  const SmartComputerMolecule(this.entity);

  final GenericSmartComputerDE entity;

  @override
  State<SmartComputerMolecule> createState() => _SmartComputerMoleculeState();
}

class _SmartComputerMoleculeState extends State<SmartComputerMolecule> {
  Future<void> _suspendAllSmartComputers(List<String> smartComputersId) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.suspendDevices(devicesId: smartComputersId);
  }

  Future<void> _shutdownAllSmartComputers(List<String> smartComputersId) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.shutdownDevices(devicesId: smartComputersId);
  }

  void suspendComputer(BuildContext context) {
    final String deviceId = widget.entity!.getCbjDeviceId;
    _suspendAllSmartComputers([deviceId]);
  }

  void shutdownComputer(BuildContext context) {
    final String deviceId = widget.entity!.getCbjDeviceId;
    _shutdownAllSmartComputers([deviceId]);
  }

  @override
  Widget build(BuildContext context) {
    return DeviceNameRow(
      widget.entity.cbjEntityName.getOrCrash()!,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
              suspendComputer(context);
            },
            child: Tab(
              icon: FaIcon(
                FontAwesomeIcons.moon,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
              child: TextAtom(
                'Sleep',
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
              shutdownComputer(context);
            },
            child: Tab(
              icon: FaIcon(
                FontAwesomeIcons.powerOff,
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
              child: TextAtom(
                'Shutdown',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
