import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/devices_cards/light_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/kt.dart';

class ConfigureNewCbjCompWidgets extends StatelessWidget {
  ConfigureNewCbjCompWidgets({
    @required this.cbjCompEntity,
  }) {
    _textEditingController['allInSameRoom'] = TextEditingController();
  }

  final CBJCompEntity cbjCompEntity;
  final Map<String, TextEditingController> _textEditingController = {};

  Widget devicesList() {
    final List<DeviceEntity> devicesList =
        cbjCompEntity.cBJCompDevices.getOrCrash().asList();

    final List<Widget> widgetList = [];

    for (final DeviceEntity device in devicesList) {
      if (device.type.getOrCrash() == 'Light') {
        final TextEditingController textEditingControllerTemp =
            TextEditingController();
        _textEditingController['defaultName/${device.id.getOrCrash()}'] =
            textEditingControllerTemp;
        widgetList.add(
          Container(
            color: Colors.yellowAccent.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      const Text('Type: Light'),
                      Expanded(
                        child: Center(
                          child: BlocProvider(
                            create: (context) => getIt<LightToggleBloc>(),
                            child: LightCard(device),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  child: TextFormField(
                    controller: textEditingControllerTemp,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.greenAccent.withOpacity(0.3),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.solidLightbulb,
                          color: Colors.white,
                        ),
                        labelText: 'Light Name',
                        labelStyle: const TextStyle(color: Colors.white)),
                    autocorrect: false,
                    onChanged: (value) {
                      // roomName = value;
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        widgetList.add(
          Container(
            color: Colors.grey.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(vertical: 30),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Type ${device.type.getOrCrash()} is not supported yet',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
    return Column(
      children: widgetList,
    );
  }

  Future<void> setupNewDevice() async {
    //TODO: Show the user that process is running in the background

    final CBJCompEntity compUpdatedData = newCBJCompEntity();


    //TODO: Save all the data to the cloud

    //TODO: Save the data to the device

    //TODO: Send firebase data and new hotspot to the security bear

    //TODO: Make sure the data was updated and device can updated firebase

    //TODO: go back to add new devices screen

    return;
  }

  /// Organize all the data from the text fields to updated CBJCompEntity
  CBJCompEntity newCBJCompEntity() {
    final List<DeviceEntity> deviceEntityList = [];

    cbjCompEntity.cBJCompDevices.getOrCrash().asList().forEach((deviceE) {
      final String deviceName =
          _textEditingController['defaultName/${deviceE.id.getOrCrash()}'].text;
      deviceEntityList
          .add(deviceE.copyWith(defaultName: DeviceDefaultName(deviceName)));
    });
    final CBJCompEntity compUpdatedData = cbjCompEntity.copyWith(
        cBJCompDevices: CBJCompDevices(deviceEntityList.toImmutableList()));

    return compUpdatedData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Configure devices',
          style: TextStyle(color: Colors.white),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: true,
                      onChanged: (bool value) {},
                    ),
                    const Text(
                      'All devices in the same room',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Text(
                  'Room Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _textEditingController['allInSameRoom'],
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.greenAccent.withOpacity(0.3),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.placeOfWorship,
                          color: Colors.white,
                        ),
                        labelText: 'Room Name',
                        labelStyle: const TextStyle(color: Colors.white)),
                    autocorrect: false,
                    onChanged: (value) {},
                  ),
                ),
                if (cbjCompEntity.cBJCompDevices.getOrCrash().size < 1)
                  const Text('')
                else
                  devicesList(),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
              color: Colors.greenAccent,
              onPressed: () {},
              child: const Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
