import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/application/smart_computers/smart_computers_actor/smart_computers_actor_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartComputerWidget extends StatelessWidget {
  const SmartComputerWidget(this._deviceEntity);

  final GenericSmartComputerDE? _deviceEntity;

  void suspendComputer(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartComputersActorBloc>().add(
          SmartComputersActorEvent.suspendAllSmartComputers(
            [deviceId],
            context,
          ),
        );
  }

  void shutdownComputer(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartComputersActorBloc>().add(
          SmartComputersActorEvent.shutdownAllSmartComputers(
            [deviceId],
            context,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SmartComputersActorBloc, SmartComputersActorState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                    child: Text(
                      'Sleep',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
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
                    child: Text(
                      'Shutdown',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
