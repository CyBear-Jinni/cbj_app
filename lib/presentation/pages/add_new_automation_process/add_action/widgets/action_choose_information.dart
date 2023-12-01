import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class ActionChooseInformation extends StatefulWidget {
  @override
  State<ActionChooseInformation> createState() =>
      _ActionChooseInformationState();
}

class _ActionChooseInformationState extends State<ActionChooseInformation> {
  List<RoomEntity> _allRooms = [];
  List<DeviceEntityAbstract> _allDevices = [];

  String actionsName = '';
  String propertyName = '';

  /// Will contain (in that order) device to change his property to change and the new value of this property
  List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
      allDevicesWithNewAction = [];
  List<MapEntry<String, String>> allEntityActions = [];
  bool isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    List<RoomEntity?> allRoomsTemp = [];
    (await IRoomRepository.instance.getAllRooms()).fold((l) => null, (r) {
      allRoomsTemp = List<RoomEntity?>.from(r.iter);
    });
    allRoomsTemp.removeWhere((element) => element == null);

    List<DeviceEntityAbstract?> allDevicesTemp = [];
    (await IDeviceRepository.instance.getAllDevices()).fold((l) => null, (r) {
      allDevicesTemp = List<DeviceEntityAbstract>.from(r.iter);
    });
    allDevicesTemp.removeWhere((element) => element == null);
    setState(() {
      _allRooms = allRoomsTemp.map((e) => e!).toList();
      _allDevices = allDevicesTemp.map((e) => e!).toList();
    });
  }

  Future<void> _changeActionDevices(String actionForProperty) async {
    for (final DeviceEntityAbstract? device in _allDevices) {
      if (device != null && actionForProperty == device.uniqueId.getOrCrash()) {
        setState(() {
          allDevicesWithNewAction = [
            MapEntry(device, const MapEntry(null, null)),
          ];
          actionsName = '';
        });
      }
    }
  }

  Future<void> _actionsNameChange(String value) async {
    if (allDevicesWithNewAction.isNotEmpty) {
      final List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
          tempAllDevicesWithNewActionList = List.from(allDevicesWithNewAction);

      final MapEntry<String?, String> propertyWithAction = MapEntry(
        tempAllDevicesWithNewActionList[0].value.key,
        actionsName,
      );

      tempAllDevicesWithNewActionList[0] =
          MapEntry(tempAllDevicesWithNewActionList[0].key, propertyWithAction);

      setState(() {
        actionsName = value;
        allDevicesWithNewAction = tempAllDevicesWithNewActionList;
      });
    }
  }

  Future<void> _changePropertyForDevices(String propertyOfDevice) async {
    if (allDevicesWithNewAction.isNotEmpty) {
      final List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
          tempAllDevicesWithNewActionList = List.from(allDevicesWithNewAction);

      final MapEntry<String?, String?> propertyWithAction = MapEntry(
        propertyOfDevice,
        null,
      );

      tempAllDevicesWithNewActionList[0] =
          MapEntry(tempAllDevicesWithNewActionList[0].key, propertyWithAction);

      setState(() {
        propertyName = propertyOfDevice;
        allDevicesWithNewAction = tempAllDevicesWithNewActionList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_allDevices.isEmpty || _allRooms.isEmpty) {
      return const CircularProgressIndicatorAtom();
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
                allDevicesWithNewAction.isNotEmpty
                    ? allDevicesWithNewAction[0].key.cbjEntityName.getOrCrash()!
                    : 'Choose Device',
                style: const TextStyle(color: Colors.white),
              ),
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => _changeActionDevices(value!),
              items: _allDevices.map<DropdownMenuItem<String>>((e) {
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
              onChanged: (value) => _changePropertyForDevices(value!),
              items: allDevicesWithNewAction.isNotEmpty
                  ? allDevicesWithNewAction[0]
                      .key
                      .getListOfPropertiesToChange()
                      .map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: TextAtom(e),
                      );
                    }).toList()
                  : <DropdownMenuItem<String>>[
                      const DropdownMenuItem<String>(
                        value: 'Choose device first',
                        child: TextAtom('Choose device first'),
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
              items: (allDevicesWithNewAction.isNotEmpty &&
                      allDevicesWithNewAction[0].value.key != null &&
                      allDevicesWithNewAction[0].value.key!.isNotEmpty)
                  ? allDevicesWithNewAction[0]
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
                    Fluttertoast.showToast(
                      msg: 'Add action',
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.purple,
                      textColor: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 16.0,
                    );

                    context.router.pop<
                        List<
                            MapEntry<DeviceEntityAbstract,
                                MapEntry<String?, String?>>>>(
                      allDevicesWithNewAction,
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
