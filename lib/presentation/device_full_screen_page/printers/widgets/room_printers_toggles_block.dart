import 'package:cybear_jinni/domain/room/smart_room_object.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/printers/printer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomPrintersTogglesBlock extends StatelessWidget {
  const RoomPrintersTogglesBlock(
    this._smartRoomObject, {
    this.maxPrintersToShow,
  });

  final SmartRoomObject? _smartRoomObject;

  final int? maxPrintersToShow;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    /// Creates column of rows of switch printers
    Widget createSwitchTableWidget() {
      final List<Widget> columnOfPrinters = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];
      const int maxPrintersInRow = 2;
      int numberOfPrintersToShow;
      if (maxPrintersToShow != null &&
          maxPrintersToShow! <= _smartRoomObject!.getPrinters()!.length) {
        numberOfPrintersToShow = maxPrintersToShow!;
      } else {
        numberOfPrintersToShow = _smartRoomObject!.getPrinters()!.length;
      }

      for (int i = 0; i < numberOfPrintersToShow; i += maxPrintersInRow) {
        for (int v = 0; v < maxPrintersInRow; v++) {
          if (_smartRoomObject!.getPrinters()!.length > i + v) {
            widgetsForRow.add(
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: sizeBoxWidth + 15,
                child: PrinterPage(
                  _smartRoomObject!.getPrinters()![i + v],
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
        final Widget rowOfPrinters = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetsForRow,
        );
        widgetsForRow = <Widget>[];
        columnOfPrinters.add(rowOfPrinters);
      }
      columnOfPrinters.add(
        const SizedBox(
          height: 5,
        ),
      );

      return Column(
        children: columnOfPrinters,
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
                if (maxPrintersToShow != null &&
                    _smartRoomObject!.getPrinters()!.length >
                        maxPrintersToShow!) {
                  // context.router.push(
                  //   PrintersInTheRoomRoute(thisSmartRoom: _smartRoomObject),
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
                  if (maxPrintersToShow != null &&
                      _smartRoomObject!.getPrinters()!.length >
                          maxPrintersToShow!)
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
