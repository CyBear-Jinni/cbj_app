import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/rgbw_lights/widgets/error_rgbw_lights_device_card_widget.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/rgbw_lights/widgets/rgbw_light_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hsv_color_pickers/hsv_color_pickers.dart';
import 'package:kt_dart/collection.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class RoomRgbwLights extends StatelessWidget {
  const RoomRgbwLights(
      this._deviceEntityList, this._gradientColor, this._roomEntity,
      {this.maxLightsToShow = 4});

  final KtList<DeviceEntityAbstract> _deviceEntityList;

  final int maxLightsToShow;

  final String _roomEntity;

  final List<Color> _gradientColor;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    Widget createSwitchTableWidget() {
      final List<Widget> columnOfLights = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];

      final int _numberOfLightsToShow = _deviceEntityList.size > maxLightsToShow
          ? maxLightsToShow
          : _deviceEntityList.size;

      int maxLightsInRow = 2;

      if (screenSize.width < 580) {
        maxLightsInRow = 1;
      }

      for (int i = 0; i < _numberOfLightsToShow; i += maxLightsInRow) {
        for (int v = 0; v < maxLightsInRow; v++) {
          if (_deviceEntityList.size > i + v &&
              _deviceEntityList[i + v] is GenericRgbwLightDE) {
            final GenericRgbwLightDE deviceEntityTemp =
                _deviceEntityList[i + v] as GenericRgbwLightDE;
            if (deviceEntityTemp.failureOption.isSome()) {
              widgetsForRow
                  .add(ErrorRgbwLightsDeviceCard(device: deviceEntityTemp));
            } else {
              widgetsForRow.add(Column(
                children: [
                  Text(
                    deviceEntityTemp.defaultName.getOrCrash()!,
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // TODO: Add the brightness slider
                  // SleekCircularSlider(
                  //   onChangeStart: (double value) {},
                  //   onChange: (value) {},
                  //   onChangeEnd: (double value) {},
                  //   appearance: CircularSliderAppearance(
                  //     customColors: CustomSliderColors(
                  //       trackColor: Colors.white,
                  //       progressBarColor:
                  //           const Color(0xFFFFDF5D).withOpacity(0.7),
                  //       hideShadow: true,
                  //     ),
                  //     infoProperties: InfoProperties(
                  //         topLabelText: 'On/Off\n',
                  //         topLabelStyle: const TextStyle(
                  //             color: Color(0xFFFFDF5D), fontSize: 17),
                  //         mainLabelStyle: const TextStyle(
                  //             color: Color(0xFFFFDF5D), fontSize: 12),
                  //         modifier: (double value) {
                  //           return '${value.round()}%';
                  //         },
                  //         bottomLabelStyle: const TextStyle(
                  //             color: Color(0xFFFFDF5D), fontSize: 12),
                  //         bottomLabelText: 'Brightness'),
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: sizeBoxWidth + 15,
                    child: BlocProvider(
                      create: (context) => getIt<LightToggleBloc>(),
                      child: RgbwLightWidget(deviceEntityTemp),
                    ),
                  ),
                  HuePicker(
                    initialColor: HSVColor.fromColor(Colors.green),
                    onChanged: (HSVColor color) {
                      // do something with color
                    },
                  ),
                ],
              ));
            }
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
            colors: _gradientColor,
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft),
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
                if (maxLightsToShow != null &&
                    _deviceEntityList.size > maxLightsToShow) {
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
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  if (maxLightsToShow != null &&
                      _deviceEntityList.size > maxLightsToShow)
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
