import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/domain/device/i_device_repository.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ActionChooseInformation extends StatefulWidget {
  @override
  State<ActionChooseInformation> createState() =>
      _ActionChooseInformationState();
}

class _ActionChooseInformationState extends State<ActionChooseInformation> {
  List<RoomEntity> _allRooms = [];
  List<DeviceEntityBase> _allEntities = [];

  String actionsName = '';
  String propertyName = '';

  /// Will contain (in that order) device to change his property to change and the new value of this property
  List<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>
      allEntitiesWithNewAction = [];
  List<MapEntry<String, String>> allEntityActions = [];
  bool isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    List<RoomEntity?> allRoomsTemp = [];
    IRoomRepository.instance.getAllRooms().fold((l) => null, (r) {
      allRoomsTemp = List<RoomEntity?>.from(r.iter);
    });
    allRoomsTemp.removeWhere((element) => element == null);

    List<DeviceEntityBase?> allEntitiesTemp = [];
    (await IDeviceRepository.instance.getAllEntites()).fold((l) => null, (r) {
      allEntitiesTemp = List<DeviceEntityBase>.from(r.iter);
    });
    allEntitiesTemp.removeWhere((element) => element == null);
    setState(() {
      _allRooms = allRoomsTemp.map((e) => e!).toList();
      _allEntities = allEntitiesTemp.map((e) => e!).toList();
    });
  }

  Future<void> _changeActionEntities(String actionForProperty) async {
    for (final DeviceEntityBase? device in _allEntities) {
      if (device != null && actionForProperty == device.uniqueId.getOrCrash()) {
        setState(() {
          allEntitiesWithNewAction = [
            MapEntry(device, const MapEntry(null, null)),
          ];
          actionsName = '';
        });
      }
    }
  }

  Future<void> _actionsNameChange(String value) async {
    if (allEntitiesWithNewAction.isNotEmpty) {
      final List<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>
          tempAllEntitiesWithNewActionList =
          List.from(allEntitiesWithNewAction);

      final MapEntry<String?, String> propertyWithAction = MapEntry(
        tempAllEntitiesWithNewActionList[0].value.key,
        actionsName,
      );

      tempAllEntitiesWithNewActionList[0] =
          MapEntry(tempAllEntitiesWithNewActionList[0].key, propertyWithAction);

      setState(() {
        actionsName = value;
        allEntitiesWithNewAction = tempAllEntitiesWithNewActionList;
      });
    }
  }

  Future<void> _changePropertyForEntities(String propertyOfDevice) async {
    if (allEntitiesWithNewAction.isNotEmpty) {
      final List<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>
          tempAllEntitiesWithNewActionList =
          List.from(allEntitiesWithNewAction);

      final MapEntry<String?, String?> propertyWithAction = MapEntry(
        propertyOfDevice,
        null,
      );

      tempAllEntitiesWithNewActionList[0] =
          MapEntry(tempAllEntitiesWithNewActionList[0].key, propertyWithAction);

      setState(() {
        propertyName = propertyOfDevice;
        allEntitiesWithNewAction = tempAllEntitiesWithNewActionList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_allEntities.isEmpty || _allRooms.isEmpty) {
      return const Expanded(
        child: Center(
          child: TextAtom(
            'At lest one area and device needed for this feature',
          ),
        ),
      );
    }

    return SingleChildScrollView(
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
                allEntitiesWithNewAction.isNotEmpty
                    ? allEntitiesWithNewAction[0]
                        .key
                        .cbjEntityName
                        .getOrCrash()!
                    : 'Choose Device',
                style: const TextStyle(color: Colors.white),
              ),
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => _changeActionEntities(value!),
              items: _allEntities.map<DropdownMenuItem<String>>((e) {
                return DropdownMenuItem<String>(
                  value: e.uniqueId.getOrCrash(),
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
                propertyName != '' ? propertyName : 'Property to change',
                style: const TextStyle(color: Colors.white),
              ),
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => _changePropertyForEntities(value!),
              items: allEntitiesWithNewAction.isNotEmpty
                  ? allEntitiesWithNewAction[0]
                      .key
                      .getListOfPropertiesToChange()
                      .map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem<String>(
                        value: e.name,
                        child: TextAtom(e.name),
                      );
                    }).toList()
                  : <DropdownMenuItem<String>>[
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
                actionsName != '' ? actionsName : 'Choose Action',
                style: const TextStyle(color: Colors.white),
              ),
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => _actionsNameChange(value!),
              items: (allEntitiesWithNewAction.isNotEmpty &&
                      allEntitiesWithNewAction[0].value.key != null &&
                      allEntitiesWithNewAction[0].value.key!.isNotEmpty)
                  ? allEntitiesWithNewAction[0]
                      .key
                      .getAllValidActions()
                      .map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: TextAtom(e),
                      );
                    }).toList()
                  : <DropdownMenuItem<String>>[
                      const DropdownMenuItem<String>(
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

                    context.router.pop<
                        List<
                            MapEntry<DeviceEntityBase,
                                MapEntry<String?, String?>>>>(
                      allEntitiesWithNewAction,
                    );
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
    );
  }
}
