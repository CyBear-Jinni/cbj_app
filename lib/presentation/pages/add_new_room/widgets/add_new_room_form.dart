import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/room_failures.dart';
import 'package:cbj_integrations_controller/domain/room/value_objects_room.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/snack_bar_service.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class AddNewRoomForm extends StatefulWidget {
  @override
  State<AddNewRoomForm> createState() => _AddNewRoomFormState();
}

class _AddNewRoomFormState extends State<AddNewRoomForm> {
  Set<RoomEntity?> _allRooms = {};
  Set<DeviceEntityBase?> _allDevices = {};
  RoomUniqueId roomUniqueId = RoomUniqueId();
  RoomDefaultName cbjEntityName = RoomDefaultName('');
  RoomBackground background = RoomBackground(
    'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
  );
  RoomTypes roomTypes = RoomTypes(const {});
  RoomDevicesId roomDevicesId = RoomDevicesId(const {});
  RoomScenesId roomScenesId = RoomScenesId(const {});
  RoomRoutinesId roomRoutinesId = RoomRoutinesId(const {});
  RoomBindingsId roomBindingsId = RoomBindingsId(const {});
  RoomMostUsedBy roomMostUsedBy = RoomMostUsedBy(const {});
  RoomPermissions roomPermissions = RoomPermissions(const {});
  bool showErrorMessages = false;
  bool isSubmitting = false;
  dartz.Option authFailureOrSuccessOption = dartz.none();

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    IRoomRepository.instance.getAllRooms().fold((l) => null, (r) {
      _allRooms = Set<RoomEntity>.from(r.iter);
    });

    (await IDeviceRepository.instance.getAllDevices()).fold((l) => null, (r) {
      _allDevices = Set<DeviceEntityBase>.from(r.iter);
    });
    _allRooms.removeWhere((element) => element == null);
    _allDevices.removeWhere((element) => element == null);
    setState(() {
      _allRooms = _allRooms as Set<RoomEntity>;
      _allDevices = _allDevices as Set<DeviceEntityBase>;
    });
  }

  Future<void> _createRoom() async {
    final RoomEntity roomEntity = RoomEntity(
      uniqueId: RoomUniqueId.fromUniqueString(roomUniqueId.getOrCrash()),
      cbjEntityName: RoomDefaultName(cbjEntityName.getOrCrash()),
      background: RoomBackground(background.getOrCrash()),
      roomTypes: RoomTypes(roomTypes.getOrCrash()),
      roomDevicesId: RoomDevicesId(roomDevicesId.getOrCrash()),
      roomScenesId: RoomScenesId(roomScenesId.getOrCrash()),
      roomRoutinesId: RoomRoutinesId(roomRoutinesId.getOrCrash()),
      roomBindingsId: RoomBindingsId(roomBindingsId.getOrCrash()),
      roomMostUsedBy: RoomMostUsedBy(roomMostUsedBy.getOrCrash()),
      roomPermissions: RoomPermissions(roomPermissions.getOrCrash()),
    );

    IRoomRepository.instance.create(roomEntity);
  }

  Future<void> _defaultNameChanged(String value) async {
    setState(() {
      cbjEntityName = RoomDefaultName(value);
      authFailureOrSuccessOption = dartz.none();
    });
  }

  Future<void> _roomTypesChanged(Set<String> value) async {
    setState(() {
      roomTypes = RoomTypes(value);
      authFailureOrSuccessOption = dartz.none();
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return MarginedExpandedAtom(
      child: Column(
        children: [
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              constraints: BoxConstraints(maxHeight: screenSize.height * 0.83),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: FaIcon(FontAwesomeIcons.rightToBracket),
                        labelText: 'Area Name',
                      ),
                      autocorrect: false,
                      onChanged: (value) => _defaultNameChanged(
                        value,
                      ),
                      validator: (_) => cbjEntityName.value.fold(
                        (RoomFailure f) => 'Validation error',
                        (r) => null,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MultiSelectDialogField(
                      buttonText: const Text(
                        'Select_Purposes_Of_The_Area',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ).tr(),
                      cancelText: const Text('CANCEL').tr(),
                      confirmText: const Text('OK').tr(),
                      title: const TextAtom('Select'),
                      items: AreaPurposesTypes.values
                          .map((AreaPurposesTypes areaPurposeType) {
                        final String tempAreaName = areaPurposeType.name
                            .substring(1, areaPurposeType.name.length);
                        String areaNameEdited =
                            areaPurposeType.name.substring(0, 1).toUpperCase();
                        for (final String a in tempAreaName.characters) {
                          if (a[0] == a[0].toUpperCase()) {
                            areaNameEdited += ' ';
                          }
                          // ignore: use_string_buffers
                          areaNameEdited += a;
                        }

                        return MultiSelectItem(
                          areaPurposeType.value,
                          areaNameEdited,
                        );
                      }).toList(),
                      listType: MultiSelectListType.CHIP,
                      onConfirm: (List<int> values) {
                        _roomTypesChanged(
                          values.map((e) => e.toString()).toSet(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _createRoom();
                      SnackBarService().show(
                        context,
                        'Adding area',
                      );
                      context.router.pop();
                    },
                    child: const TextAtom('ADD'),
                  ),
                ),
              ],
            ),
          ),
          if (isSubmitting) ...[
            const SizedBox(
              height: 8,
            ),
            const LinearProgressIndicator(),
          ],
        ],
      ),
    );
  }
}
