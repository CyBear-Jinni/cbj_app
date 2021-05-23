import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class BlindWidget extends StatelessWidget {
  const BlindWidget(this._deviceEntity);

  final DeviceEntity _deviceEntity;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity.state.getOrCrash();
    final deviceAction = _deviceEntity.action.getOrCrash();

    bool toggleValue = false;
    Color toggleColor = Colors.blueGrey;

    if (deviceAction == DeviceActions.on.toString()) {
      toggleValue = true;
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        toggleColor = Theme.of(context).primaryColorDark;
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
                FlatButton(
                  color: Colors.brown,
                  onPressed: () {
                    context.read<BlindsActorBloc>().add(
                          BlindsActorEvent.moveDownAllBlinds(
                              [_deviceEntity.id.getOrCrash()], context),
                        );
                  },
                  child: Tab(
                    icon: FaIcon(FontAwesomeIcons.arrowDown,
                        color: Theme.of(context).textTheme.bodyText1.color),
                    child: Text(
                      'Down',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                          fontSize: 16),
                    ).tr(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FlatButton(
                  color: Colors.grey,
                  onPressed: () {
                    context.read<BlindsActorBloc>().add(
                          BlindsActorEvent.stopAllBlinds(
                              [_deviceEntity.id.getOrCrash()], context),
                        );
                  },
                  child: Tab(
                    icon: FaIcon(FontAwesomeIcons.solidHandPaper,
                        color: Theme.of(context).textTheme.bodyText1.color),
                    child: Text(
                      'Stop',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                          fontSize: 16),
                    ).tr(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FlatButton(
                  color: Colors.amber,
                  onPressed: () {
                    context.read<BlindsActorBloc>().add(
                          BlindsActorEvent.moveUpAllBlinds(
                              [_deviceEntity.id.getOrCrash()], context),
                        );
                  },
                  child: Tab(
                    icon: FaIcon(FontAwesomeIcons.arrowUp,
                        color: Theme.of(context).textTheme.bodyText1.color),
                    child: Text(
                      'Up',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                          fontSize: 16),
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
