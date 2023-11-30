import 'package:cbj_integrations_controller/domain/room/smart_room_object.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/switches/smart_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomSwitchesTogglesBlock extends StatelessWidget {
  const RoomSwitchesTogglesBlock(
    this._smartRoomObject, {
    this.maxSwitchesToShow,
  });

  final SmartRoomObject? _smartRoomObject;

  final int? maxSwitchesToShow;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    /// Creates column of rows of switch switches
    Widget createSwitchTableWidget() {
      final List<Widget> columnOfSwitches = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];
      const int maxSwitchesInRow = 2;
      int numberOfSwitchesToShow;
      if (maxSwitchesToShow != null &&
          maxSwitchesToShow! <= _smartRoomObject!.getSwitches()!.length) {
        numberOfSwitchesToShow = maxSwitchesToShow!;
      } else {
        numberOfSwitchesToShow = _smartRoomObject!.getSwitches()!.length;
      }

      for (int i = 0; i < numberOfSwitchesToShow; i += maxSwitchesInRow) {
        for (int v = 0; v < maxSwitchesInRow; v++) {
          if (_smartRoomObject!.getSwitches()!.length > i + v) {
            widgetsForRow.add(
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: sizeBoxWidth + 15,
                child: SmartSwitchPage(
                  _smartRoomObject!.getSwitches()![i + v],
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
        final Widget rowOfSwitches = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetsForRow,
        );
        widgetsForRow = <Widget>[];
        columnOfSwitches.add(rowOfSwitches);
      }
      columnOfSwitches.add(
        const SizedBox(
          height: 5,
        ),
      );

      return Column(
        children: columnOfSwitches,
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: screenSize.height * 0.02),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: _smartRoomObject!.grediantColor
              .map((e) => Color(int.parse(e.toHexColor().toCssString())))
              .toList(),
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
                if (maxSwitchesToShow != null &&
                    _smartRoomObject!.getSwitches()!.length >
                        maxSwitchesToShow!) {
                  // context.router.push(
                  //   SwitchesInTheRoomRoute(thisSmartRoom: _smartRoomObject),
                  // );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextAtom(
                    _smartRoomObject!.getRoomName(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (maxSwitchesToShow != null &&
                      _smartRoomObject!.getSwitches()!.length >
                          maxSwitchesToShow!)
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
