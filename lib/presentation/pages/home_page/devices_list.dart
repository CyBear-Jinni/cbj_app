import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

class DevicesList extends StatefulWidget {
  const DevicesList(
    this.devices, {
    this.howMuchToShow,
    this.axis = Axis.vertical,
  });

  final List<GenericLightDE>? devices;
  final int? howMuchToShow;
  final Axis? axis;

  @override
  State<StatefulWidget> createState() {
    return _DevicesList();
  }
}

class _DevicesList extends State<DevicesList> {
  List<GenericLightDE>? _devices;
  int? _howMuchToShow;
  Axis? _axis;

  @override
  void initState() {
    super.initState();
    _devices = widget.devices;
    if (_devices != null && widget.howMuchToShow == null) {
      _howMuchToShow = _devices!.length;
    } else {
      _howMuchToShow = widget.howMuchToShow;
    }
    _axis = widget.axis;
  }

  Widget _buildItemList(BuildContext context, int index) {
    return SmartLightMolecule(_devices![index]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: _axis!,
      itemBuilder: _buildItemList,
      itemCount: _howMuchToShow,
    );
  }
}
