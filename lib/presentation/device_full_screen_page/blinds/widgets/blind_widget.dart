import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class BlindWidget extends StatelessWidget {
  const BlindWidget(this._deviceEntity);

  final GenericBlindsDE _deviceEntity;

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    final deviceState = _deviceEntity.entityStateGRPC.getOrCrash();
    final deviceAction = _deviceEntity.blindsSwitchState!.getOrCrash();

    // bool toggleValue = false;
    // Color toggleColor = Colors.blueGrey;

    if (deviceAction == DeviceActions.on.toString()) {
      // toggleValue = true;
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        // toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        // toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return BlocConsumer<BlindsActorBloc, BlindsActorState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                    context.read<BlindsActorBloc>().add(
                          BlindsActorEvent.moveDownAllBlinds(
                            [_deviceEntity.uniqueId.getOrCrash()],
                            context,
                          ),
                        );
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.arrowDown,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      'Down',
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
                    context.read<BlindsActorBloc>().add(
                          BlindsActorEvent.stopAllBlinds(
                            [_deviceEntity.uniqueId.getOrCrash()],
                            context,
                          ),
                        );
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.solidHand,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      'Stop',
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
                    context.read<BlindsActorBloc>().add(
                          BlindsActorEvent.moveUpAllBlinds(
                            [_deviceEntity.uniqueId.getOrCrash()],
                            context,
                          ),
                        );
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.arrowUp,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      'Up',
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
