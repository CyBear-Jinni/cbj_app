import 'package:cybear_jinni/domain/room/smart_room_object.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_tv/smart_tv_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomSmartTvsTogglesBlock extends StatelessWidget {
  const RoomSmartTvsTogglesBlock(
    this._smartRoomObject, {
    this.maxSmartTvsToShow,
  });

  final SmartRoomObject? _smartRoomObject;

  final int? maxSmartTvsToShow;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    /// Creates column of rows of switch smartTvs
    Widget createSwitchTableWidget() {
      final List<Widget> columnOfSmartTvs = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];
      const int maxSmartTvsInRow = 2;
      int numberOfSmartTvsToShow;
      if (maxSmartTvsToShow != null &&
          maxSmartTvsToShow! <= _smartRoomObject!.getSmartTvs()!.length) {
        numberOfSmartTvsToShow = maxSmartTvsToShow!;
      } else {
        numberOfSmartTvsToShow = _smartRoomObject!.getSmartTvs()!.length;
      }

      for (int i = 0; i < numberOfSmartTvsToShow; i += maxSmartTvsInRow) {
        for (int v = 0; v < maxSmartTvsInRow; v++) {
          if (_smartRoomObject!.getSmartTvs()!.length > i + v) {
            widgetsForRow.add(
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: sizeBoxWidth + 15,
                child: SmartTvPage(
                  _smartRoomObject!.getSmartTvs()![i + v],
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
        final Widget rowOfSmartTvs = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widgetsForRow,
        );
        widgetsForRow = <Widget>[];
        columnOfSmartTvs.add(rowOfSmartTvs);
      }
      columnOfSmartTvs.add(
        const SizedBox(
          height: 5,
        ),
      );

      return Column(
        children: columnOfSmartTvs,
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
          color: (Theme.of(context).textTheme.bodyText1!.color)!,
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
                if (maxSmartTvsToShow != null &&
                    _smartRoomObject!.getSmartTvs()!.length >
                        maxSmartTvsToShow!) {
                  // context.router.push(
                  //   SmartTvsInTheRoomRoute(thisSmartRoom: _smartRoomObject),
                  // );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _smartRoomObject!.getRoomName(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (maxSmartTvsToShow != null &&
                      _smartRoomObject!.getSmartTvs()!.length >
                          maxSmartTvsToShow!)
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: Theme.of(context).textTheme.bodyText1!.color,
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
