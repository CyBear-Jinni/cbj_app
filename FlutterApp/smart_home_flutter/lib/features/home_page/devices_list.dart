import 'package:flutter/material.dart';
import 'package:smart_home_flutter/features/home_page/smart_device_widget.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';


class DevicesList extends StatefulWidget {
  final List<SmartDeviceObject> devices;
  int howMuchToShow;
  final Axis axis;


  DevicesList(this.devices, {this.howMuchToShow, this.axis = Axis.vertical}) {
    if (this.devices != null && howMuchToShow == null) {
      this.howMuchToShow = this.devices.length;
    }
  }


  @override
  State<StatefulWidget> createState() {
    return _DevicesList();
  }
}


class _DevicesList extends State<DevicesList> {
  List<SmartDeviceObject> _devices;
  int _howMuchToShow;
  Axis _axis;


  @override
  void initState() {
    super.initState();
    _devices = widget.devices;
    _howMuchToShow = widget.howMuchToShow;
    _axis = widget.axis;
  }


  Widget _buildItemList(BuildContext context, int index) {
    return SmartDevicePage(_devices[index]);
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: _axis,
      itemBuilder: _buildItemList,
      itemCount: _howMuchToShow,
    );
  }
}
