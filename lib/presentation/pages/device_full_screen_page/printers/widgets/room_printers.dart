import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/printers/widgets/error_printers_device_card_widget.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/printers/widgets/printer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomPrinters extends StatelessWidget {
  const RoomPrinters(
    this._deviceEntityList,
    this._gradientColor,
    this._roomEntity, {
    this.maxPrintersToShow = 4,
  });

  final KtList<DeviceEntityAbstract> _deviceEntityList;

  final int maxPrintersToShow;

  int get _maxPrintersInRow => 2;

  final String _roomEntity;

  final List<Color> _gradientColor;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    Widget createSwitchTableWidget() {
      final List<Widget> columnOfPrinters = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];

      final int numberOfPrintersToShow =
          _deviceEntityList.size > maxPrintersToShow
              ? maxPrintersToShow
              : _deviceEntityList.size;

      for (int i = 0; i < numberOfPrintersToShow; i += _maxPrintersInRow) {
        for (int v = 0; v < _maxPrintersInRow; v++) {
          if (_deviceEntityList.size > i + v &&
              _deviceEntityList[i + v] is GenericPrinterDE) {
            final GenericPrinterDE deviceEntityTemp =
                _deviceEntityList[i + v] as GenericPrinterDE;
            if (deviceEntityTemp.failureOption.isSome()) {
              widgetsForRow
                  .add(ErrorPrintersDeviceCard(device: deviceEntityTemp));
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
                      child: PrinterWidget(deviceEntityTemp),
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
        final Widget rowOfPrinters = Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
                if (_deviceEntityList.size > maxPrintersToShow) {
                  // ExtendedNavigator.of(context).pushPrintersInTheRoomPage(
                  //     thisSmartRoom: _deviceEntityList);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextAtom(
                    _roomEntity,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (_deviceEntityList.size > maxPrintersToShow)
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
