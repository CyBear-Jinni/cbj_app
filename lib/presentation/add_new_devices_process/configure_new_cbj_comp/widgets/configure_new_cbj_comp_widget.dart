import 'package:cybear_jinni/application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart';
import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbenum.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/devices_cards/blinds_card.dart';
import 'package:cybear_jinni/presentation/core/devices_cards/light_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class ConfigureNewCbjCompWidgets extends StatelessWidget {
  ConfigureNewCbjCompWidgets({
    @required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  static String deviceNameFieldKey = 'deviceNameField';
  static String devicesDefaultRoomNameField = '';

  Widget devicesList(
      CBJCompEntity cbjCompEntityForDeviceList,
      Map<String, TextEditingController> _textEditingController,
      BuildContext context) {
    final List<DeviceEntity> devicesList =
        cbjCompEntityForDeviceList.cBJCompDevices.getOrCrash().asList();

    final List<Widget> widgetList = [];

    for (final DeviceEntity device in devicesList) {
      if (device.type.getOrCrash() != DeviceTypes.typeNotSupported.toString()) {
        final TextEditingController textEditingControllerTemp =
            TextEditingController(
                text: device.defaultName.value.getOrElse(() => ''));
        _textEditingController[
                '$deviceNameFieldKey/${device.id.value.getOrElse(() => 'deviceId')}'] =
            textEditingControllerTemp;
        widgetList.add(
          Container(
            color: Colors.yellow.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                if (device.type.getOrCrash() == DeviceTypes.light.toString())
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Text('Type: ${device.type.getOrCrash()}'),
                        Expanded(
                          child: Center(
                            child: BlocProvider(
                              create: (context) => getIt<LightToggleBloc>(),
                              child: LightCard(device),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                else if (device.type.getOrCrash() ==
                    DeviceTypes.boiler.toString())
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Text('Type: ${device.type.getOrCrash()}'),
                        Expanded(
                          child: Center(
                            child: BlocProvider(
                              create: (context) => getIt<LightToggleBloc>(),
                              child: LightCard(device),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                else if (device.type.getOrCrash() ==
                    DeviceTypes.blinds.toString())
                  Column(
                    children: [
                      Text('Type: ${device.type.getOrCrash()}'),
                      Center(
                        child: BlocProvider(
                          create: (context) => getIt<LightToggleBloc>(),
                          child: BlindsCard(device),
                        ),
                      ),
                    ],
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  child: TextFormField(
                    controller: textEditingControllerTemp,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.2),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(
                          FontAwesomeIcons.solidLightbulb,
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                        labelText: '${device.type.getOrCrash()} Name',
                        labelStyle: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyText1.color)),
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
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color),
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

  @override
  Widget build(BuildContext context) {
    CBJCompEntity cbjCompEntityInBuild = cbjCompEntity;
    final Map<String, TextEditingController> _textEditingController = {};
    _textEditingController['allInSameRoom'] = TextEditingController();

    return BlocBuilder<ConfigureNewCbjCompBloc, ConfigureNewCbjCompState>(
        builder: (context, state) {
      return state.map(
        initial: (_) {
          return Column(
            children: [
              Text(
                'Configure devices',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor:
                                Theme.of(context).textTheme.bodyText1.color,
                            activeColor: Colors.red,
                            value: true,
                            onChanged: (bool value) {},
                          ),
                          Text(
                            'All devices in the same room',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                          ),
                        ],
                      ),
                      Text(
                        'Room Name',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          controller: _textEditingController['allInSameRoom'],
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.greenAccent.withOpacity(0.3),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .color,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              prefixIcon: Icon(
                                FontAwesomeIcons.placeOfWorship,
                                color:
                                    Theme.of(context).textTheme.bodyText1.color,
                              ),
                              labelText: 'Room Name',
                              labelStyle: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color)),
                          autocorrect: false,
                          onChanged: (value) {},
                        ),
                      ),
                      if (cbjCompEntityInBuild.cBJCompDevices
                              .getOrCrash()
                              .size <
                          1)
                        const Text('')
                      else
                        devicesList(cbjCompEntityInBuild,
                            _textEditingController, context),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                    ),
                    onPressed: () async {
                      context.read<ConfigureNewCbjCompBloc>().add(
                          ConfigureNewCbjCompEvent.setupNewDevice(
                              cbjCompEntityInBuild, _textEditingController));
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
        actionInProgress: (actionInProgress) {
          return Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width - 20,
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Setting up computer',
                  style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 250,
                        child: LiquidLinearProgressIndicator(
                          value: actionInProgress.progressPercentage,
                          valueColor: const AlwaysStoppedAnimation(Colors.pink),
                          backgroundColor:
                              Theme.of(context).textTheme.bodyText1.color,
                          borderColor: Colors.red.withOpacity(0.9),
                          borderWidth: 4.0,
                          center: const Text(
                            'Loading...',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Please wait as we are setting your new computer',
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    ],
                  ),
                ),
                // child: Center(
                //   child: CircularProgressIndicator(
                //     backgroundColor: Colors.cyan,
                //     strokeWidth: 5,
                //   ),
                // ),
              ),
            ],
          );
        },
        errorInProcess: (value) {
          return Text(
            'Error in the process.',
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
          );
        },
        completeSuccess: (CompleteSuccess value) {
          return Text(
            'Computer have been configured.',
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
          );
        },
      );
    });
  }
}
