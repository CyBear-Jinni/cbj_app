import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
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
        await IPhoneAsHub.instance.getAllEntities;
    setState(() {
      allDevices = devices.values.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (allDevices == null) {
      return const CircularProgressIndicator();
    }

    return Scaffold(
      appBar: AppBar(
        title: const TextAtom('Add and Manage'),
        backgroundColor: Colors.purple.withOpacity(0.7),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      body: MarginedExpandedAtom(
        child: ListViewSeparatedMolecule(
          itemCount: allDevices!.length,
          itemBuilder: (context, index) {
            final DeviceEntityAbstract device = allDevices!.elementAt(index);
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextAtom(
                    'Ip: ${device.deviceLastKnownIp.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Device: ${device.deviceOriginalName.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Entity: ${device.entityOriginalName.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Host: ${device.deviceHostName.getOrCrash()}',
                  ),
                  TextAtom(
                    ', mDNS: ${device.deviceMdns.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Port: ${device.devicePort.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Vendor: ${device.deviceVendor.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Mac: ${device.devicesMacAddress.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Srv: ${device.srvResourceRecord.getOrCrash()}',
                  ),
                  TextAtom(
                    ', Ptr: ${device.ptrResourceRecord.getOrCrash()}',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
