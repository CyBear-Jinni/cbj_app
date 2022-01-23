import 'package:cybear_jinni/presentation/core/notifications.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

/// Showing alarm clock
class AlarmClockWidget extends StatefulWidget {
  const AlarmClockWidget(
    this.headerText,
    this.subText,
    this.backgroundImage,
    this.content,
  );

  final String subText;

  final String headerText;

  final String backgroundImage;

  final String content;

  @override
  State<StatefulWidget> createState() {
    return _AlarmClockState(headerText, subText, backgroundImage, content);
  }
}

class _AlarmClockState extends State<AlarmClockWidget> {
  _AlarmClockState(
    this.headerText,
    this.subText,
    this.backgroundImage,
    this.content,
  );

  final String subText;

  final String headerText;

  final String backgroundImage;

  final String content;

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: (Theme.of(context).textTheme.bodyText1!.color)!,
            width: 0.6,
          ),
        ),
        child: ExpansionTileCard(
          // borderRadius: 20,
          // background: Image.asset(
          //   backgroundImage,
          //   fit: BoxFit.cover,
          // ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    headerText,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    inactiveTrackColor: Colors.grey.withOpacity(0.6),
                    onChanged: (value) async {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                      // await zonedScheduleNotification();
                      await showNotificationCustomSound();
                    },
                  ),
                ],
              ),
              Text(
                subText,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(content, style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
