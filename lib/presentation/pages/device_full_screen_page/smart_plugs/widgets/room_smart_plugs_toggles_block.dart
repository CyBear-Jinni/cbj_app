import 'package:cbj_integrations_controller/domain/room/smart_room_object.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_plugs/smart_plug_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show smartPlug toggles in a container with the background color from smart room
/// object
class RoomSmartPlugsTogglesBlock extends StatelessWidget {
  const RoomSmartPlugsTogglesBlock(
    this._smartRoomObject, {
    this.maxSmartPlugsToShow,
  });

  final SmartRoomObject? _smartRoomObject;

  final int? maxSmartPlugsToShow;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    /// Creates column of rows of smartPlug smartPlugs
    Widget createSmartPlugTableWidget() {
      final List<Widget> columnOfSmartPlugs = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];
      const int maxSmartPlugsInRow = 2;
      int numberOfSmartPlugsToShow;
      if (maxSmartPlugsToShow != null &&
          maxSmartPlugsToShow! <= _smartRoomObject!.getSmartPlugs()!.length) {
        numberOfSmartPlugsToShow = maxSmartPlugsToShow!;
      } else {
        numberOfSmartPlugsToShow = _smartRoomObject!.getSmartPlugs()!.length;
      }

      for (int i = 0; i < numberOfSmartPlugsToShow; i += maxSmartPlugsInRow) {
        for (int v = 0; v < maxSmartPlugsInRow; v++) {
          if (_smartRoomObject!.getSmartPlugs()!.length > i + v) {
            widgetsForRow.add(
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: sizeBoxWidth + 15,
                child: SmartSmartPlugPage(
                  _smartRoomObject!.getSmartPlugs()![i + v],
                ),
              ),
            );
          } else {
            widgetsForRow.add(
              const SizedBox(
                width: 110,
              ),
            );
          }
        }
        final Widget rowOfSmartPlugs = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetsForRow,
        );
        widgetsForRow = <Widget>[];
        columnOfSmartPlugs.add(rowOfSmartPlugs);
      }
      columnOfSmartPlugs.add(
        const SizedBox(
          height: 5,
        ),
      );

      return Column(
        children: columnOfSmartPlugs,
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: screenSize.height * 0.02),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: _smartRoomObject!.grediantColor,
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        border: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
          width: 0.6,
        ),
      ),
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
                if (maxSmartPlugsToShow != null &&
                    _smartRoomObject!.getSmartPlugs()!.length >
                        maxSmartPlugsToShow!) {
                  // context.router.push(
                  //   SmartPlugsInTheRoomRoute(thisSmartRoom: _smartRoomObject),
                  // );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _smartRoomObject!.getRoomName(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (maxSmartPlugsToShow != null &&
                      _smartRoomObject!.getSmartPlugs()!.length >
                          maxSmartPlugsToShow!)
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 20,
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
            ),
            createSmartPlugTableWidget(),
          ],
        ),
      ),
    );
  }
}
