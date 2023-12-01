import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartComputerWidget extends StatefulWidget {
  const SmartComputerWidget(this._deviceEntity);

  final GenericSmartComputerDE? _deviceEntity;

  @override
  State<SmartComputerWidget> createState() => _SmartComputerWidgetState();
}

class _SmartComputerWidgetState extends State<SmartComputerWidget> {
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
    final String deviceId = widget._deviceEntity!.getDeviceId();
    _suspendAllSmartComputers([deviceId]);
  }

  void shutdownComputer(BuildContext context) {
    final String deviceId = widget._deviceEntity!.getDeviceId();
    _shutdownAllSmartComputers([deviceId]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
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
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
