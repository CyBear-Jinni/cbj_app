import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/scene/i_scene_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/core/snack_bar_service.dart';
import 'package:cybear_jinni/presentation/pages/add_new_automation_process/add_scene/widgets/scene_action_widget.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddSceneWidget extends StatefulWidget {
  @override
  State<AddSceneWidget> createState() => _AddSceneWidgetState();
}

class _AddSceneWidgetState extends State<AddSceneWidget> {
  String sceneName = '';
  List<DeviceEntityAbstract> allDevices = [];

  /// List of devices with entities, will be treated as actions
  List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
      allDevicesWithNewAction = [];
  List<MapEntry<String, String>> allEntityActions = [];
  bool showErrorMessages = false;
  bool isSubmitting = false;
  dartz.Option<dartz.Either<CoreLoginFailure, dartz.Unit>>
      authFailureOrSuccessOption = dartz.none();

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    List<DeviceEntityAbstract?> allDevicesTemp = [];
    (await IDeviceRepository.instance.getAllDevices()).fold((l) => null, (r) {
      allDevicesTemp = List<DeviceEntityAbstract>.from(r.iter);
    });

    allDevicesTemp.removeWhere((element) => element == null);
    setState(() {
      allDevices = allDevicesTemp.map((e) => e!).toList();
    });
  }

  Future<void> _sendSceneToHub() async {
    ISceneCbjRepository.instance
        .addOrUpdateNewSceneInHubFromDevicesPropertyActionList(
      sceneName,
      allDevicesWithNewAction,
      // TODO: Check what value to use
      AreaPurposesTypes.laundryRoom,
    );
  }

  Future<void> _sceneNameChange(String value) async {
    sceneName = value;
  }

  Future<void> _addDevicesWithNewActions(
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>> value,
  ) async {
    setState(() {
      allDevicesWithNewAction.addAll(value);
    });
  }

  // List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
  // smartDevicesWithActionToAdd,
  //     required String actionsName,
  //     required List<DeviceEntityAbstract> allDevices,
  //     required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
  // allDevicesWithNewAction,
  //     required List<MapEntry<String, String>> allEntityActions,
  //     required bool showErrorMessages,
  //     required bool isSubmitting,
  //     required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,

  @override
  Widget build(BuildContext context) {
    if (allEntityActions.isNotEmpty) {
      return const CircularProgressIndicatorAtom();
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: FaIcon(FontAwesomeIcons.fileSignature),
              labelText: 'Scene Name',
            ),
            style: const TextStyle(color: Colors.black),
            onChanged: _sceneNameChange,
          ),
          SizedBox(
            height: 300,
            width: 500,
            child: ListView.builder(
              itemCount: allDevicesWithNewAction.length,
              itemBuilder: (BuildContext context, int index) {
                final MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>
                    currentDevice = allDevicesWithNewAction[index];

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  child: SceneActionWidget(
                    deviceEntityAbstract: currentDevice.key,
                    propertyToChange:
                        currentDevice.value.key ?? 'Missing property',
                    actionToChange: currentDevice.value.value ??
                        EntityActions.actionNotSupported.toString(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              // Red border with the width is equal to 5
              border: Border.all(),
            ),
            child: TextButton(
              onPressed: () {
                showAdaptiveActionSheet(
                  context: context,
                  actions: <BottomSheetAction>[
                    BottomSheetAction(
                      title: const TextAtom(
                        'Add device action',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 23,
                        ),
                      ),
                      onPressed: (_) async {
                        final List<
                                MapEntry<DeviceEntityAbstract,
                                    MapEntry<String?, String?>>>? actionList =
                            await context.router.push<
                                List<
                                    MapEntry<DeviceEntityAbstract,
                                        MapEntry<String?, String?>>>>(
                          const AddActionRoute(),
                        );
                        if (actionList != null) {
                          _addDevicesWithNewActions(
                            actionList,
                          );
                        }
                      },
                    ),
                    BottomSheetAction(
                      title: TextAtom(
                        'Add service action',
                        style: TextStyle(
                          color: Colors.green.shade600,
                          fontSize: 23,
                        ),
                      ),
                      onPressed: (_) {
                        SnackBarService().show(
                          context,
                          'Adding service action will be added in the future',
                        );
                      },
                    ),
                    BottomSheetAction(
                      title: const TextAtom(
                        'Add time based action',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 23,
                        ),
                      ),
                      onPressed: (_) {
                        SnackBarService().show(
                          context,
                          'Adding time based action will be added in the future',
                        );
                      },
                    ),
                  ],
                );
              },
              child: const TextAtom('+ Add action'),
            ),
          ),
          const SizedBox(height: 10),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              // Red border with the width is equal to 5
              border: Border.all(),
            ),
            child: TextButton(
              onPressed: () {
                SnackBarService().show(
                  context,
                  'Adding Scene',
                );
                _sendSceneToHub();
              },
              child: const TextAtom('Add Scene'),
            ),
          ),
        ],
      ),
    );
  }
}
