import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart';
import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/devices_cards/blinds_card.dart';
import 'package:cybear_jinni/presentation/core/devices_cards/light_card.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class ConfigureNewCbjCompWidgets extends StatelessWidget {
  const ConfigureNewCbjCompWidgets({
    required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  static String deviceNameFieldKey = 'deviceNameField';
  static String devicesDefaultRoomNameField = '';

  Widget devicesList(
    CBJCompEntity cbjCompEntityForDeviceList,
    Map<String, TextEditingController> textEditingController,
    BuildContext context,
  ) {
    final List<GenericLightDE> devicesList =
        cbjCompEntityForDeviceList.cBJCompDevices!.getOrCrash().asList();

    final List<Widget> widgetList = [];

    for (final GenericLightDE device in devicesList) {
      if (device.entityTypes.getOrCrash() !=
          EntityTypes.smartTypeNotSupported.toString()) {
        final TextEditingController textEditingControllerTemp =
            TextEditingController(
          text: device.cbjEntityName.value.getOrElse(() => ''),
        );
        textEditingController[
                '$deviceNameFieldKey/${device.uniqueId.value.getOrElse(() => 'deviceId')}'] =
            textEditingControllerTemp;
        widgetList.add(
          Container(
            color: Colors.yellow.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                if (device.entityTypes.getOrCrash() ==
                    EntityTypes.light.toString())
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        TextAtom('Type: ${device.entityTypes.getOrCrash()}'),
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
                  )
                else if (device.entityTypes.getOrCrash() ==
                    EntityTypes.boiler.toString())
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        TextAtom('Type: ${device.entityTypes.getOrCrash()}'),
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
                  )
                else if (device.entityTypes.getOrCrash() ==
                    EntityTypes.blinds.toString())
                  Column(
                    children: [
                      TextAtom('Type: ${device.entityTypes.getOrCrash()}'),
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
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).textTheme.bodyLarge!.color!,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.solidLightbulb,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                      labelText: '${device.entityTypes.getOrCrash()} Name',
                      labelStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
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
                    child: TextAtom(
                      'Type ${device.entityTypes.getOrCrash()} is not supported yet',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
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
    final CBJCompEntity cbjCompEntityInBuild = cbjCompEntity;
    final Map<String, TextEditingController> textEditingController = {};
    textEditingController['allInSameRoom'] = TextEditingController();

    return BlocBuilder<ConfigureNewCbjCompBloc, ConfigureNewCbjCompState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            context.read<ConfigureNewCbjCompBloc>().add(
                  ConfigureNewCbjCompEvent.sendHotSpotInformation(
                    cbjCompEntityInBuild,
                  ),
                );

            state = const ConfigureNewCbjCompState.actionInProgress(0);

            return TextAtom(
              'Configure devices',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
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
                  child: TextAtom(
                    'Connecting computer to WiFi',
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
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
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.pink),
                            backgroundColor:
                                Theme.of(context).textTheme.bodyLarge!.color,
                            borderColor: Colors.red.withOpacity(0.9),
                            borderWidth: 4.0,
                            center: const TextAtom(
                              'Loading...',
                              style: TextStyle(color: Colors.black),
                            ),
                            borderRadius: 2,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextAtom(
                          'Please wait as we are setting your new computer',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
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
            return TextAtom(
              'Error in the process.',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            );
          },
          completeSuccess: (CompleteSuccess value) {
            context.router.replace(
              ComputerConnectionCheckRoute(
                cbjCompEntity: cbjCompEntity,
              ),
            );
            return TextAtom(
              'Computer have been configured.',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            );
          },
        );
      },
    );
  }
}
