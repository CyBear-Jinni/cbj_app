import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/molecules/list_view_separated_molecule.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DevicesInNetworkPage extends StatefulWidget {
  @override
  State<DevicesInNetworkPage> createState() => _DevicesInNetworkPageState();
}

class _DevicesInNetworkPageState extends State<DevicesInNetworkPage> {
  List<DeviceEntityAbstract>? allDevices;

  @override
  void initState() {
    super.initState();
    initializeAllDevices();
  }

  Future initializeAllDevices() async {
    final Map<String, DeviceEntityAbstract> devices =
        await IPhoneAsHub.instance.getAllDevices;
    setState(() {
      allDevices = devices.values.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (allDevices == null) {
      return const CircularProgressIndicator();
    }

    return ListViewSeparatedMolecule(
      itemCount: allDevices!.length,
      itemBuilder: (context, index) {
        final DeviceEntityAbstract device = allDevices!.elementAt(index);
        return Text(device.deviceOriginalName.getOrCrash() ?? '');
      },
    );
  }
}
