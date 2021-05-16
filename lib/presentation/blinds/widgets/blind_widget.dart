import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
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

  void _onChange(BuildContext context, bool value) {
    final DeviceEntity tempDeviceEntity = _deviceEntity.copyWith(
      state: DeviceState('set'),
      action: DeviceAction(value.toString()),
    );
    context.read<LightToggleBloc>().add(
          LightToggleEvent.changeAction(tempDeviceEntity, false),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity.state.getOrCrash();
    final deviceAction = _deviceEntity.action.getOrCrash();

    bool toggleValue = false;
    Color toggleColor = Colors.blueGrey;

    if (deviceAction == 'on') {
      toggleValue = true;
      if (deviceState == 'ack') {
        toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == 'ack') {
        toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return BlocConsumer<LightToggleBloc, LightToggleState>(
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
                  onPressed: () => {}, // _smartBlindsObject.blindsDown(),
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
                  onPressed: () => {}, //_smartBlindsObject.blindsStop(),
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
                  onPressed: () => {}, //_smartBlindsObject.blindsUp(),
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
