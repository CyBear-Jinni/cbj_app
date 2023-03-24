import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbenum.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/lights/widgets/error_lights_device_card_widget.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/lights/widgets/lights_widgets/dimmable_light_widget.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/lights/widgets/lights_widgets/light_widget.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/lights/widgets/lights_widgets/rgb_light_widgets/rgbw_light_widget.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class RoomLights extends StatelessWidget {
  const RoomLights(
    this._deviceEntityList,
    this._gradientColor,
    this._roomEntity, {
    this.maxLightsToShow = 4,
  });

  final KtList<DeviceEntityAbstract> _deviceEntityList;

  final int maxLightsToShow;

  final int _maxLightsInRow = 2;

  final String _roomEntity;

  final List<Color> _gradientColor;

  List<Widget> lightsToShow(
    BuildContext context,
    List<GenericLightDE> lightsList,
  ) {
    final List<Widget> columnOfLightsTemp = <Widget>[];

    List<Widget> widgetsForRow = <Widget>[];

    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final int numberOfLightsToShow = _deviceEntityList.size > maxLightsToShow
        ? maxLightsToShow
        : _deviceEntityList.size;

    for (int i = 0; i < numberOfLightsToShow; i += _maxLightsInRow) {
      for (int v = 0; v < _maxLightsInRow; v++) {
        if (lightsList.length > i + v) {
          final GenericLightDE deviceEntityTemp = lightsList[i + v];
          if (deviceEntityTemp.failureOption.isSome()) {
            widgetsForRow.add(ErrorLightsDeviceCard(device: deviceEntityTemp));
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
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: sizeBoxWidth + 15,
                    child: BlocProvider(
                      create: (context) => getIt<LightToggleBloc>(),
                      child: LightWidget(deviceEntityTemp),
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
      final Widget rowOfLights = Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgetsForRow,
      );
      widgetsForRow = <Widget>[];
      columnOfLightsTemp.add(rowOfLights);
    }

    return columnOfLightsTemp;
  }

  List<Widget> dimmableLightsToShow(
    BuildContext context,
    List<GenericDimmableLightDE> lightsList,
  ) {
    final List<Widget> widgetsForRow = <Widget>[];

    for (final GenericDimmableLightDE lightDE in lightsList) {
      widgetsForRow.add(
        BlocProvider(
          create: (context) => getIt<LightToggleBloc>(),
          child: DimmableLightWidget(lightDE),
        ),
      );
    }

    return widgetsForRow;
  }

  List<Widget> rgbwLightsToShow(
    BuildContext context,
    List<GenericRgbwLightDE> lightsList,
  ) {
    final List<Widget> widgetsForRow = <Widget>[];

    for (final GenericRgbwLightDE lightDE in lightsList) {
      widgetsForRow.add(
        BlocProvider(
          create: (context) => getIt<LightToggleBloc>(),
          child: RgbwLightWidget(lightDE),
        ),
      );
    }

    return widgetsForRow;
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    Widget createSwitchTableWidget() {
      final List<Widget> columnOfLights = <Widget>[];

      final List<GenericLightDE> lightList = [];
      final List<GenericDimmableLightDE> dimmableLightList = [];
      final List<GenericRgbwLightDE> rgbwLightList = [];

      /// Filtering lights in the rooom to different separate lists bt types
      for (final DeviceEntityAbstract deviceEntity in _deviceEntityList.iter) {
        if (deviceEntity.entityTypes.getOrCrash().toString() ==
            DeviceTypes.light.toString()) {
          lightList.add(deviceEntity as GenericLightDE);
        } else if (deviceEntity.entityTypes.getOrCrash() ==
            DeviceTypes.dimmableLight.toString()) {
          dimmableLightList.add(deviceEntity as GenericDimmableLightDE);
        } else if (deviceEntity.entityTypes.getOrCrash() ==
            DeviceTypes.rgbwLights.toString()) {
          rgbwLightList.add(deviceEntity as GenericRgbwLightDE);
        } else {
          logger.w('Please add support for new light type in room_lights page');
        }
      }

      bool isThereDeviceAbove = false;

      final List<Widget> regularLightsWidgets =
          lightsToShow(context, lightList);
      if (regularLightsWidgets.isNotEmpty) {
        columnOfLights.addAll(regularLightsWidgets);
        isThereDeviceAbove = true;
      }

      final List<Widget> dimmableLightsWidgets =
          dimmableLightsToShow(context, dimmableLightList);

      if (dimmableLightsWidgets.isNotEmpty) {
        if (isThereDeviceAbove) {
          columnOfLights.add(const SizedBox(height: 100));
        }
        columnOfLights.addAll(dimmableLightsWidgets);
        isThereDeviceAbove = true;
      }

      final List<Widget> rgbwLightsWidgets =
          rgbwLightsToShow(context, rgbwLightList);

      if (rgbwLightsWidgets.isNotEmpty) {
        if (isThereDeviceAbove) {
          columnOfLights.add(const SizedBox(height: 100));
        }
        columnOfLights.addAll(rgbwLightsWidgets);
        isThereDeviceAbove = true;
      }

      columnOfLights.add(const SizedBox(height: 35));

      return Column(
        children: columnOfLights,
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
                if (_deviceEntityList.size > maxLightsToShow) {
                  // ExtendedNavigator.of(context).pushLightsInTheRoomPage(
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
                  if (_deviceEntityList.size > maxLightsToShow)
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
