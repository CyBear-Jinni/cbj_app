import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

@RoutePage()
class AddNewAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const TextAtom('Add New Area'),
      ),
      body: AddNewAreaForm(),
    );
  }
}

class AddNewAreaForm extends StatefulWidget {
  @override
  State<AddNewAreaForm> createState() => _AddNewAreaFormState();
}

class _AddNewAreaFormState extends State<AddNewAreaForm> {
  // final Set<DeviceEntityBase?> _allDevices = {};
  AreaUniqueId areaUniqueId = AreaUniqueId();
  AreaDefaultName cbjEntityName = AreaDefaultName('');
  AreaBackground background = AreaBackground(
    'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
  );
  AreaTypes areaTypes = AreaTypes(const {});
  AreaEntitiesId areaDevicesId = AreaEntitiesId(const {});
  AreaScenesId areaScenesId = AreaScenesId(const {});
  AreaRoutinesId areaRoutinesId = AreaRoutinesId(const {});
  AreaBindingsId areaBindingsId = AreaBindingsId(const {});
  AreaMostUsedBy areaMostUsedBy = AreaMostUsedBy(const {});
  AreaPermissions areaPermissions = AreaPermissions(const {});
  bool showErrorMessages = false;
  bool isSubmitting = false;

  // Future _initialized() async {
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

  Future _createArea() async {
    final AreaEntity areaEntity = AreaEntity(
      uniqueId: AreaUniqueId.fromUniqueString(areaUniqueId.getOrCrash()),
      cbjEntityName: AreaDefaultName(cbjEntityName.getOrCrash()),
      background: AreaBackground(background.getOrCrash()),
      areaTypes: AreaTypes(areaTypes.getOrCrash()),
      entitiesId: AreaEntitiesId(areaDevicesId.getOrCrash()),
      areaScenesId: AreaScenesId(areaScenesId.getOrCrash()),
      areaRoutinesId: AreaRoutinesId(areaRoutinesId.getOrCrash()),
      areaBindingsId: AreaBindingsId(areaBindingsId.getOrCrash()),
      areaMostUsedBy: AreaMostUsedBy(areaMostUsedBy.getOrCrash()),
      areaPermissions: AreaPermissions(areaPermissions.getOrCrash()),
    );

    ConnectionsService.instance.setNewArea(areaEntity);
  }

  Future _defaultNameChanged(String value) async {
    setState(() {
      cbjEntityName = AreaDefaultName(value);
    });
  }

  Future _areaTypesChanged(Set<String> value) async {
    setState(() {
      areaTypes = AreaTypes(value);
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
                        (AreaFailure f) => 'Validation error',
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
                          areaPurposeType.name,
                          areaNameEdited,
                        );
                      }).toList(),
                      listType: MultiSelectListType.CHIP,
                      onConfirm: (List<String> values) {
                        _areaTypesChanged(
                          values.map((e) => e).toSet(),
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
                    onPressed: () async {
                      SnackBarService().show(
                        context,
                        'Adding area',
                      );
                      await _createArea();
                      if (!mounted) {
                        return;
                      }

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
