import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightInTheRoomBlock extends StatelessWidget {
  LightInTheRoomBlock(this.lightsInRoom);

  final List<DeviceEntity> lightsInRoom;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: Text('')),
            const Expanded(
              child: CircleAvatar(
                child: FaIcon(
                  FontAwesomeIcons.solidLightbulb,
                  color: Colors.amberAccent,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 55,
                alignment: Alignment.topLeft,
                child: Container(
                  width: 28,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    lightsInRoom.length.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Rom Name lights',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'Off',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
            Text('·'),
            Text(
              'On',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ],
        )
      ],
    );
  }
}
