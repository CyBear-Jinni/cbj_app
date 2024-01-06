import 'dart:collection';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/add_action_page.dart';
import 'package:cybearjinni/presentation/pages/add_routine/widgets/routine_action_widget.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new routine
@RoutePage()
class AddRoutinePage extends StatefulWidget {
  const AddRoutinePage({
    required this.daysToRepeat,
    required this.hourToRepeat,
    required this.minutesToRepeat,
  });

  final RoutineCbjRepeatDateDays daysToRepeat;
  final RoutineCbjRepeatDateHour hourToRepeat;
  final RoutineCbjRepeatDateMinute minutesToRepeat;

  @override
  State<AddRoutinePage> createState() => _AddRoutinePageState();
}

class _AddRoutinePageState extends State<AddRoutinePage> {
  @override
  void initState() {
    super.initState();
    initialzeEntities();
  }

  String? routineName;

  RoutineCbjRepeatDateDays? daysToRepeat;
  RoutineCbjRepeatDateHour? hourToRepeat;
  RoutineCbjRepeatDateMinute? minutesToRepeat;

  /// List of devices with entities, will be treated as actions
  HashSet<EntityActionObject> allDevicesWithNewAction = HashSet();

  Set<MapEntry<String, String>> allEntityActions = {};
  bool showErrorMessages = false;
  bool isSubmitting = false;
  dartz.Option<dartz.Either<CoreLoginFailure, dartz.Unit>>
      authFailureOrSuccessOption = dartz.none();

  HashMap<String, DeviceEntityBase>? entities;

  Future<void> initialzeEntities() async {
    final HashMap<String, DeviceEntityBase> entitiesTemp =
        await ConnectionsService.instance.getAllEntities;

    setState(() {
      entities = entitiesTemp;
    });
  }

  Future<void> _sendRoutineToHub() async {
    if (daysToRepeat == null ||
        hourToRepeat == null ||
        minutesToRepeat == null ||
        routineName == null) {
      return;
    }
    // IRoutineCbjRepository.instance
    //     .addOrUpdateNewRoutineInHubFromDevicesPropertyActionList(
    //   routineName!,
    //   allDevicesWithNewAction,
    //   daysToRepeat!,
    //   hourToRepeat!,
    //   minutesToRepeat!,
    // );
  }

  Future<void> _routineNameChange(String value) async {
    routineName = value;
  }

  Future<void> _addFullAction(EntityActionObject value) async {
    setState(() {
      allDevicesWithNewAction.add(value);
    });
  }

  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    if (entities == null) {
      return const Scaffold(
        body: CircularProgressIndicatorAtom(),
      );
    }
    return Scaffold(
      body: ColoredBox(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopBarMolecule(
              pageName: 'Add Routine',
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: FaIcon(FontAwesomeIcons.fileSignature),
                      labelText: 'Routine Name',
                    ),
                    onChanged: _routineNameChange,
                  ),
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      itemCount: allDevicesWithNewAction.length,
                      itemBuilder: (BuildContext context, int index) {
                        final EntityActionObject currentDevice =
                            allDevicesWithNewAction.elementAt(index);

                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 1),
                          child: RoutineActionWidget(
                            entity: currentDevice.entity,
                            propertyToChange: currentDevice.property,
                            actionToChange: currentDevice.action,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
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
                                    await context.router
                                        .push<EntityActionObject?>(
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent.withOpacity(0.5),
                      // Red border with the width is equal to 5
                      border: Border.all(),
                    ),
                    child: TextButton(
                      onPressed: () {
                        SnackBarService().show(
                          context,
                          'Adding Routine',
                        );
                        _sendRoutineToHub();
                      },
                      child: const TextAtom('Add Routine'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
