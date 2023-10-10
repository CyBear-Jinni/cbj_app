import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/application/smart_computers/smart_computers_actor/smart_computers_actor_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_computers/widgets/error_smart_computers_device_card_widget.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_computers/widgets/smart_computer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomSmartComputers extends StatelessWidget {
  const RoomSmartComputers(
    this._deviceEntityList,
    this._gradientColor,
    this._roomEntity, {
    this.maxSmartComputersToShow = 4,
  });

  final KtList<DeviceEntityAbstract> _deviceEntityList;

  final int maxSmartComputersToShow;

  final int _maxSmartComputersInRow = 2;

  final String _roomEntity;

  final List<Color> _gradientColor;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    Widget createSwitchTableWidget() {
      final List<Widget> columnOfSmartComputers = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];

      final int numberOfSmartComputersToShow =
          _deviceEntityList.size > maxSmartComputersToShow
              ? maxSmartComputersToShow
              : _deviceEntityList.size;

      for (int i = 0;
          i < numberOfSmartComputersToShow;
          i += _maxSmartComputersInRow) {
        for (int v = 0; v < _maxSmartComputersInRow; v++) {
          if (_deviceEntityList.size > i + v &&
              _deviceEntityList[i + v] is GenericSmartComputerDE) {
            final GenericSmartComputerDE deviceEntityTemp =
                _deviceEntityList[i + v] as GenericSmartComputerDE;
            if (deviceEntityTemp.failureOption.isSome()) {
              widgetsForRow
                  .add(ErrorSmartComputersDeviceCard(device: deviceEntityTemp));
            } else {
              widgetsForRow.add(
                Column(
                  children: [
                    AutoSizeText(
                      deviceEntityTemp.cbjEntityName.getOrCrash()!,
                      maxLines: 1,
                      maxFontSize: 19,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      width: sizeBoxWidth + 15,
                      child: BlocProvider(
                        create: (context) => getIt<SmartComputersActorBloc>(),
                        child: SmartComputerWidget(deviceEntityTemp),
                      ),
                    ),
                  ],
                ),
              );
            }
          } else {
            widgetsForRow.add(
              const SizedBox(
                width: 110,
              ),
            );
          }
        }
        final Widget rowOfSmartComputers = Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          colors: _gradientColor,
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        border: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
          width: 0.6,
        ),
      ),
      child: DecoratedBox(
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
                if (_deviceEntityList.size > maxSmartComputersToShow) {
                  // ExtendedNavigator.of(context).pushSmartComputersInTheRoomPage(
                  //     thisSmartRoom: _deviceEntityList);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _roomEntity,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (_deviceEntityList.size > maxSmartComputersToShow)
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
