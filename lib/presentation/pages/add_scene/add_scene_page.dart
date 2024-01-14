import 'dart:collection';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:cybearjinni/presentation/pages/add_action_page.dart';
import 'package:cybearjinni/presentation/pages/add_scene/widgets/scene_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page for adding new scene
@RoutePage()
class AddScenePage extends StatefulWidget {
  @override
  State<AddScenePage> createState() => _AddScenePageState();
}

class _AddScenePageState extends State<AddScenePage> {
  @override
  void initState() {
    super.initState();
    initialzeEntities();
  }

  String sceneName = '';
  HashMap<String, DeviceEntityBase>? entities;

  /// List of devices with entities, will be treated as actions
  HashSet<EntityActionObject> entitiesWithActions = HashSet();

  Future initialzeEntities() async {
    final HashMap<String, DeviceEntityBase> entitiesTemp =
        await ConnectionsService.instance.getEntities;

    setState(() {
      entities = entitiesTemp;
    });
  }

  List<ActionObjectSingle> entitiesWithActionsToActionsByVendor() =>
      entitiesWithActions
          .map(
            (e) => ActionObjectSingle(
              vendor: e.entity.cbjDeviceVendor.vendorsAndServices!,
              entityId: e.entity.getCbjDeviceId,
              property: e.property,
              actionType: e.action,
            ),
          )
          .toList();

  Future _sendSceneToHub() async {
    final List<ActionObjectSingle> actions =
        entitiesWithActionsToActionsByVendor();

    final SceneCbjEntity scene = SceneCbjEntity(
      uniqueId: UniqueId(),
      name: SceneCbjName(sceneName),
      backgroundColor: SceneCbjBackgroundColor(Colors.red.toString()),
      automationString: SceneCbjAutomationString(''),
      nodeRedFlowId: SceneCbjNodeRedFlowId(''),
      firstNodeId: SceneCbjFirstNodeId(''),
      iconCodePoint:
          SceneCbjIconCodePoint(Icons.microwave.codePoint.toString()),
      image: SceneCbjBackgroundImage(''),
      lastDateOfExecute: SceneCbjLastDateOfExecute(''),
      stateMassage: SceneCbjStateMassage(''),
      senderDeviceOs: SceneCbjSenderDeviceOs(''),
      senderDeviceModel: SceneCbjSenderDeviceModel(''),
      senderId: SceneCbjSenderId(''),
      compUuid: SceneCbjCompUuid(''),
      entityStateGRPC: SceneCbjDeviceStateGRPC(EntityStateGRPC.ack.name),
      actions: actions,
    );

    ConnectionsService.instance.addScene(scene);
  }

  Future _addFullAction(EntityActionObject value) async {
    setState(() {
      entitiesWithActions.add(value);
    });
  }

  // Set<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>
  // smartDevicesWithActionToAdd,
  //     required String actionsName,
  //     required Set<DeviceEntityBase> allDevices,
  //     required Set<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>
  // allDevicesWithNewAction,
  //     required Set<MapEntry<String, String>> allEntityActions,
  //     required bool showErrorMessages,
  //     required bool isSubmitting,
  //     required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,

  @override
  Widget build(BuildContext context) {
    if (entities == null) {
      return const CircularProgressIndicatorAtom();
    }

    return PageOrganism(
      pageName: 'Add Scene',
      child: Container(
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
              onChanged: (value) => sceneName = value,
            ),
            SizedBox(
              height: 300,
              width: 500,
              child: ListView.builder(
                itemCount: entitiesWithActions.length,
                itemBuilder: (BuildContext context, int index) {
                  final EntityActionObject currentDevice =
                      entitiesWithActions.elementAt(index);

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: SceneActionWidget(
                      entity: currentDevice.entity,
                      propertyToChange: currentDevice.property,
                      actionToChange: currentDevice.action,
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
                          final EntityActionObject? actionList =
                              await context.router.push<EntityActionObject?>(
                            AddActionRoute(entities: entities!),
                          );
                          if (actionList != null) {
                            _addFullAction(actionList);
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
      ),
    );
  }
}
