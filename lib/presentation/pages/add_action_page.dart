import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage<EntityActionObject?>()
class AddActionPage extends StatefulWidget {
  const AddActionPage({required this.entities});

  final HashMap<String, DeviceEntityBase> entities;

  @override
  State<AddActionPage> createState() => _AddActionPageState();
}

class _AddActionPageState extends State<AddActionPage> {
  DeviceEntityBase? selectedEntity;
  EntityProperties? selectedProperty;
  EntityActions? selectedAction;

  void onEntitySelect(String entityId) {
    setState(() {
      selectedEntity = widget.entities[entityId];
    });
  }

  Future<void> onActionSelected(String value) async {
    setState(() {
      selectedAction = EntityActions.values.elementAt(int.parse(value));
    });
  }

  Future<void> _onPropertySelected(String property) async {
    setState(() {
      selectedProperty = EntityProperties.values.elementAt(int.parse(property));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Add Action',
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: (_) => context.router.pop(),
          ),
          SingleChildScrollView(
            child: Container(
              color: HexColor('#3A3A3A'),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Row(
                    children: [
                      TextAtom(
                        'Choose Action',
                        style: TextStyle(fontSize: 27),
                      ),
                    ],
                  ),
                  DropdownButton<String>(
                    dropdownColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: TextAtom(
                      selectedEntity?.cbjEntityName.getOrCrash() ??
                          'Choose Entity',
                      style: const TextStyle(color: Colors.white),
                    ),
                    elevation: 16,
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (value) => onEntitySelect(value!),
                    items: widget.entities.values
                        .map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem<String>(
                        value: e.getCbjDeviceId,
                        child: TextAtom(e.cbjEntityName.getOrCrash()!),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DropdownButton<String>(
                    dropdownColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: TextAtom(
                      selectedProperty?.name ?? 'Select Property',
                      style: const TextStyle(color: Colors.white),
                    ),
                    elevation: 16,
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (value) => _onPropertySelected(value!),
                    items: selectedEntity
                            ?.getListOfPropertiesToChange()
                            .map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem<String>(
                            value: e.index.toString(),
                            child: TextAtom(e.name),
                          );
                        }).toList() ??
                        <DropdownMenuItem<String>>[
                          const DropdownMenuItem<String>(
                            value: 'Choose entity first',
                            child: TextAtom('Choose entity first'),
                          ),
                        ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DropdownButton<String>(
                    dropdownColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    icon: const Icon(Icons.arrow_drop_down),
                    hint: TextAtom(
                      selectedAction?.name ?? 'Choose Action',
                      style: const TextStyle(color: Colors.white),
                    ),
                    elevation: 16,
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (value) => onActionSelected(value!),
                    items: (selectedProperty != null &&
                            selectedProperty!.getActions.isNotEmpty)
                        ? selectedProperty!.getActions
                            .map<DropdownMenuItem<String>>((e) {
                            return DropdownMenuItem<String>(
                              value: e.index.toString(),
                              child: TextAtom(e.name),
                            );
                          }).toList()
                        : const <DropdownMenuItem<String>>[
                            DropdownMenuItem<String>(
                              value: 'Choose property first',
                              child: TextAtom('Choose property first'),
                            ),
                          ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          SnackBarService().show(context, 'Add action');
                          if (selectedEntity == null ||
                              selectedProperty == null ||
                              selectedAction == null) {
                            return;
                          }
                          final EntityActionObject entityActionObject =
                              EntityActionObject(
                            entity: selectedEntity!,
                            property: selectedProperty!,
                            action: selectedAction!,
                          );
                          // TODO: Add pop
                          context.router
                              .pop<EntityActionObject?>(entityActionObject);
                        },
                        child: const TextAtom(
                          'Done',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EntityActionObject {
  EntityActionObject({
    required this.entity,
    required this.property,
    required this.action,
  });

  final DeviceEntityBase entity;
  final EntityProperties property;
  final EntityActions action;
}
