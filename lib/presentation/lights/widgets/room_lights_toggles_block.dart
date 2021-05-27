import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_room_object.dart';
import 'package:cybear_jinni/presentation/home_page/smart_device_widget.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class RoomLightsTogglesBlock extends StatelessWidget {
  const RoomLightsTogglesBlock(this._smartRoomObject, {this.maxLightsToShow});

  final SmartRoomObject? _smartRoomObject;

  final int? maxLightsToShow;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    /// Creates column of rows of light switches
    Widget createSwitchTableWidget() {
      final List<Widget> columnOfLights = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];
      const int maxLightsInRow = 2;
      int numberOfLightsToShow;
      if (maxLightsToShow != null &&
          maxLightsToShow! <= _smartRoomObject!.getLights()!.length) {
        numberOfLightsToShow = maxLightsToShow!;
      } else {
        numberOfLightsToShow = _smartRoomObject!.getLights()!.length;
      }

      for (int i = 0; i < numberOfLightsToShow; i += maxLightsInRow) {
        for (int v = 0; v < maxLightsInRow; v++) {
          if (_smartRoomObject!.getLights()!.length > i + v) {
            widgetsForRow.add(
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: sizeBoxWidth + 15,
                child: SmartDevicePage(
                  _smartRoomObject!.getLights()[i + v],
                ),
              ),
            );
          } else {
            widgetsForRow.add(const SizedBox(
              width: 110,
            ));
          }
        }
        final Widget rowOfLights = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetsForRow,
        );
        widgetsForRow = <Widget>[];
        columnOfLights.add(rowOfLights);
      }
      columnOfLights.add(const SizedBox(
        height: 5,
      ));

      return Column(
        children: columnOfLights,
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: screenSize.height * 0.02),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: _smartRoomObject!.grediantColor,
              begin: Alignment.bottomLeft,
              end: Alignment.topLeft),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          border: Border.all(
            color: (Theme.of(context).textTheme.bodyText1!.color)!,
            width: 0.6,
          )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(2),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                if (maxLightsToShow != null &&
                    _smartRoomObject!.getLights()!.length > maxLightsToShow!) {
                  ExtendedNavigator.of(context)
                      .pushLightsInTheRoomPage(thisSmartRoom: _smartRoomObject);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _smartRoomObject!.getRoomName(),
                    style: TextStyle(
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (maxLightsToShow != null &&
                      _smartRoomObject!.getLights().length > maxLightsToShow!)
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      size: 20,
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
            ),
            createSwitchTableWidget(),
          ],
        ),
      ),
    );
  }
}
