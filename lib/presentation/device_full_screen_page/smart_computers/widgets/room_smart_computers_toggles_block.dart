import 'package:cybear_jinni/domain/room/smart_room_object.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_computers/smart_computer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomSmartComputersTogglesBlock extends StatelessWidget {
  const RoomSmartComputersTogglesBlock(
    this._smartRoomObject, {
    this.maxSmartComputersToShow,
  });

  final SmartRoomObject? _smartRoomObject;

  final int? maxSmartComputersToShow;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    /// Creates column of rows of switch smartComputers
    Widget createSwitchTableWidget() {
      final List<Widget> columnOfSmartComputers = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];
      const int maxSmartComputersInRow = 2;
      int numberOfSmartComputersToShow;
      if (maxSmartComputersToShow != null &&
          maxSmartComputersToShow! <=
              _smartRoomObject!.getSmartComputers()!.length) {
        numberOfSmartComputersToShow = maxSmartComputersToShow!;
      } else {
        numberOfSmartComputersToShow =
            _smartRoomObject!.getSmartComputers()!.length;
      }

      for (int i = 0;
          i < numberOfSmartComputersToShow;
          i += maxSmartComputersInRow) {
        for (int v = 0; v < maxSmartComputersInRow; v++) {
          if (_smartRoomObject!.getSmartComputers()!.length > i + v) {
            widgetsForRow.add(
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: sizeBoxWidth + 15,
                child: SmartComputerPage(
                  _smartRoomObject!.getSmartComputers()![i + v],
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
        final Widget rowOfSmartComputers = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetsForRow,
        );
        widgetsForRow = <Widget>[];
        columnOfSmartComputers.add(rowOfSmartComputers);
      }
      columnOfSmartComputers.add(
        const SizedBox(
          height: 5,
        ),
      );

      return Column(
        children: columnOfSmartComputers,
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
          color: (Theme.of(context).textTheme.bodyLarge!.color)!,
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
                if (maxSmartComputersToShow != null &&
                    _smartRoomObject!.getSmartComputers()!.length >
                        maxSmartComputersToShow!) {
                  // context.router.push(
                  //   SmartComputersInTheRoomRoute(thisSmartRoom: _smartRoomObject),
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
                  if (maxSmartComputersToShow != null &&
                      _smartRoomObject!.getSmartComputers()!.length >
                          maxSmartComputersToShow!)
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
            createSwitchTableWidget(),
          ],
        ),
      ),
    );
  }
}
