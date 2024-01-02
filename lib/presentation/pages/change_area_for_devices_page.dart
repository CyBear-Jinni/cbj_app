import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/area/area_entity.dart';
import 'package:cbj_integrations_controller/domain/area/value_objects_area.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

@RoutePage()
class ChangeAreaForDevicesPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Change Area For Devices',
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: backButtonFunction,
          ),
          ChangeAreaForDevicesWidget(),
        ],
      ),
    );
  }
}

class ChangeAreaForDevicesWidget extends StatefulWidget {
  @override
  State<ChangeAreaForDevicesWidget> createState() =>
      _ChangeAreaForDevicesWidgetState();
}

class _ChangeAreaForDevicesWidgetState
    extends State<ChangeAreaForDevicesWidget> {
  final Set<AreaEntity?> _allAreas = {};
  final Set<DeviceEntityBase?> _allDevices = {};
  AreaUniqueId areaUniqueId = AreaUniqueId();
  AreaDefaultName cbjEntityName = AreaDefaultName('');
  AreaBackground background = AreaBackground(
    'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
  );
  AreaTypes areaTypes = AreaTypes(const {});
  AreaDevicesId areaDevicesId = AreaDevicesId(const {});
  AreaScenesId areaScenesId = AreaScenesId(const {});
  AreaRoutinesId areaRoutinesId = AreaRoutinesId(const {});
  AreaBindingsId areaBindingsId = AreaBindingsId(const {});
  AreaMostUsedBy areaMostUsedBy = AreaMostUsedBy(const {});
  AreaPermissions areaPermissions = AreaPermissions(const {});
  bool showErrorMessages = false;
  bool isSubmitting = false;
  dartz.Option authFailureOrSuccessOption = dartz.none();

  // @override
  // void initState() {
  //   super.initState();
  //   _initialized();
  // }

  // Future<void> _initialized() async {
  //   IAreaRepository.instance.getAllAreas().fold((l) => null, (r) {
  //     _allAreas = Set<AreaEntity>.from(r.iter);
  //   });

  //   (await IDeviceRepository.instance.getAllEntites()).fold((l) => null, (r) {
  //     _allDevices = Set<DeviceEntityBase>.from(r.iter);
  //   });
  //   _allAreas.removeWhere((element) => element == null);
  //   _allDevices.removeWhere((element) => element == null);
  //   setState(() {
  //     _allAreas = _allAreas as Set<AreaEntity>;
  //     _allDevices = _allDevices as Set<DeviceEntityBase>;
  //   });
  // }

  Future<void> _changeAreaDevices() async {
    // final AreaEntity areaEntity = AreaEntity(
    //   uniqueId: AreaUniqueId.fromUniqueString(areaUniqueId.getOrCrash()),
    //   cbjEntityName: AreaDefaultName(cbjEntityName.getOrCrash()),
    //   background: AreaBackground(background.getOrCrash()),
    //   areaTypes: AreaTypes(areaTypes.getOrCrash()),
    //   areaDevicesId: AreaDevicesId(areaDevicesId.getOrCrash()),
    //   areaScenesId: AreaScenesId(areaScenesId.getOrCrash()),
    //   areaRoutinesId: AreaRoutinesId(areaRoutinesId.getOrCrash()),
    //   areaBindingsId: AreaBindingsId(areaBindingsId.getOrCrash()),
    //   areaMostUsedBy: AreaMostUsedBy(areaMostUsedBy.getOrCrash()),
    //   areaPermissions: AreaPermissions(areaPermissions.getOrCrash()),
    // );

    // IAreaRepository.instance.create(areaEntity);
  }

  Future<void> _areaIdChanged(String value) async {
    for (final AreaEntity? areaEntity in _allAreas) {
      if (areaEntity != null && areaEntity.uniqueId.getOrCrash() == value) {
        setState(() {
          areaUniqueId = areaEntity.uniqueId;
          cbjEntityName = areaEntity.cbjEntityName;
          authFailureOrSuccessOption = dartz.none();
        });

        return;
      }
    }
  }

  Future<void> _areaDevicesIdChanged(Set<String> value) async {
    setState(() {
      areaDevicesId = AreaDevicesId(value);
      authFailureOrSuccessOption = dartz.none();
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextAtom(
                'Choose Area',
                style: TextStyle(fontSize: 27),
              ),
              TextButton(
                onPressed: () {
                  context.router.push(const AddNewAreaRoute());
                },
                child: const TextAtom(
                  'Add New Area',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    backgroundColor: Colors.pink,
                  ),
                ),
              ),
            ],
          ),
          DropdownButton<String>(
            dropdownColor: Colors.black,
            icon: const Icon(Icons.arrow_drop_down),
            hint: TextAtom(
              cbjEntityName.isValid()
                  ? cbjEntityName.getOrCrash()
                  : 'Choose Area',
            ),
            elevation: 16,
            underline: Container(
              height: 2,
            ),
            onChanged: (value) {
              _areaIdChanged(value!);
            },
            items: _allAreas.map<DropdownMenuItem<String>>((e) {
              //     .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: e?.uniqueId.getOrCrash(),
                child: TextAtom(e?.cbjEntityName.getOrCrash() ?? ''),
              );
            }).toList(),
          ),
          SizedBox(
            height: screenSize.height * 0.1,
          ),
          const Row(
            children: [
              TextAtom(
                'Choose Device',
                style: TextStyle(fontSize: 27),
              ),
            ],
          ),
          Container(
            constraints: BoxConstraints(maxHeight: screenSize.height * 0.5),
            child: SingleChildScrollView(
              child: MultiSelectDialogField(
                items: List<MultiSelectItem<String?>>.of(
                  _allDevices.map(
                    (e) => MultiSelectItem(
                      e?.uniqueId.getOrCrash(),
                      e?.cbjEntityName.getOrCrash()! ?? '',
                    ),
                  ),
                ),
                listType: MultiSelectListType.CHIP,
                onConfirm: (List<String?> values) {
                  _areaDevicesIdChanged(
                    Set<String>.from(values),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  SnackBarService().show(
                    context,
                    'Changing devices for area',
                  );
                  _changeAreaDevices();
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
    );
  }
}
