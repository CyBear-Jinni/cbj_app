import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/application/smart_plug_toggle/smart_plug_toggle_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_plugs/widgets/error_smart_plugs_device_card_widget.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_plugs/widgets/smart_plugs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

/// Show smartPlug toggles in a container with the background color from smart room
/// object
class RoomSmartPlugs extends StatelessWidget {
  const RoomSmartPlugs(
    this._deviceEntityList,
    this._gradientColor,
    this._roomEntity, {
    this.maxSmartPlugsToShow = 4,
  });

  final KtList<DeviceEntityAbstract> _deviceEntityList;

  final int maxSmartPlugsToShow;

  final int _maxSmartPlugsInRow = 2;

  final String _roomEntity;

  final List<Color> _gradientColor;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    Widget createSmartPlugTableWidget() {
      final List<Widget> columnOfSmartPlugs = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];

      final int numberOfSmartPlugsToShow =
          _deviceEntityList.size > maxSmartPlugsToShow
              ? maxSmartPlugsToShow
              : _deviceEntityList.size;

      for (int i = 0; i < numberOfSmartPlugsToShow; i += _maxSmartPlugsInRow) {
        for (int v = 0; v < _maxSmartPlugsInRow; v++) {
          if (_deviceEntityList.size > i + v &&
              _deviceEntityList[i + v] is GenericSmartPlugDE) {
            final GenericSmartPlugDE deviceEntityTemp =
                _deviceEntityList[i + v] as GenericSmartPlugDE;
            if (deviceEntityTemp.failureOption.isSome()) {
              widgetsForRow
                  .add(ErrorSmartPlugsDeviceCard(device: deviceEntityTemp));
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
                        create: (context) => getIt<SmartPlugToggleBloc>(),
                        child: SmartPlugWidget(deviceEntityTemp),
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
                if (_deviceEntityList.size > maxSmartPlugsToShow) {
                  // ExtendedNavigator.of(context).pushSmartPlugsInTheRoomPage(
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
                  if (_deviceEntityList.size > maxSmartPlugsToShow)
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
