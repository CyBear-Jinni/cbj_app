import 'package:cybear_jinni/domain/devices/device/device_entity.dart';
import 'package:cybear_jinni/presentation/home_page/smart_device_widget.dart';
import 'package:flutter/material.dart';

class DevicesList extends StatefulWidget {
  const DevicesList(this.devices,
      {this.howMuchToShow, this.axis = Axis.vertical});

  final List<DeviceEntity>? devices;
  final int? howMuchToShow;
  final Axis? axis;

  @override
  State<StatefulWidget> createState() {
    return _DevicesList();
  }
}

class _DevicesList extends State<DevicesList> {
  List<DeviceEntity>? _devices;
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
    return SmartDevicePage(_devices![index]);
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
