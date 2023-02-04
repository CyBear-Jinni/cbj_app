import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/application/smart_tv/smart_tv_actor/smart_tv_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_tv/widgets/error_smart_tvs_device_card_widget.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_tv/widgets/smart_tv_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class RoomSmartTvs extends StatelessWidget {
  const RoomSmartTvs(
    this._deviceEntityList,
    this._gradientColor,
    this._roomEntity, {
    this.maxSmartTvsToShow = 4,
  });

  final KtList<DeviceEntityAbstract> _deviceEntityList;

  final int maxSmartTvsToShow;

  final int _maxSmartTvsInRow = 2;

  final String _roomEntity;

  final List<Color> _gradientColor;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    Widget createSwitchTableWidget() {
      final List<Widget> columnOfSmartTvs = <Widget>[];
      List<Widget> widgetsForRow = <Widget>[];

      final int numberOfSmartTvsToShow =
          _deviceEntityList.size > maxSmartTvsToShow
              ? maxSmartTvsToShow
              : _deviceEntityList.size;

      for (int i = 0; i < numberOfSmartTvsToShow; i += _maxSmartTvsInRow) {
        for (int v = 0; v < _maxSmartTvsInRow; v++) {
          if (_deviceEntityList.size > i + v &&
              _deviceEntityList[i + v] is GenericSmartTvDE) {
            final GenericSmartTvDE deviceEntityTemp =
                _deviceEntityList[i + v] as GenericSmartTvDE;
            if (deviceEntityTemp.failureOption.isSome()) {
              widgetsForRow
                  .add(ErrorSmartTvsDeviceCard(device: deviceEntityTemp));
            } else {
              widgetsForRow.add(
                Column(
                  children: [
                    AutoSizeText(
                      deviceEntityTemp.defaultName.getOrCrash()!,
                      maxLines: 1,
                      maxFontSize: 40,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      // width: sizeBoxWidth + 15,
                      child: BlocProvider(
                        create: (context) => getIt<SmartTvActorBloc>(),
                        child: SmartTvWidget(deviceEntityTemp),
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
        final Widget rowOfSmartTvs = Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                if (_deviceEntityList.size > maxSmartTvsToShow) {
                  // ExtendedNavigator.of(context).pushSmartTvsInTheRoomPage(
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
                  if (_deviceEntityList.size > maxSmartTvsToShow)
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
