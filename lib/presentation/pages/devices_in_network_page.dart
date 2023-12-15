import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
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

  Widget getTextIfNotNull(String name, String? var1) {
    if (var1 == null ||
        var1.isEmpty ||
        var1 == '0' ||
        var1 == '0.0.0.0' ||
        var1 == '[]' ||
        var1 == 'vendorsAndServicesNotSupported') {
      return const SizedBox();
    }
    return Row(
      children: [
        TextAtom('$name: $var1'),
        const SeparatorAtom(),
      ],
    );
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
      body: Container(
        margin: AppThemeData.generalHorizontalEdgeInsets,
        child: ListViewSeparatedMolecule(
          itemCount: allDevices!.length,
          itemBuilder: (context, index) {
            final DeviceEntityAbstract device = allDevices!.elementAt(index);

            final String? deviceLastKnownIp =
                device.deviceLastKnownIp.getOrCrash();
            final String? deviceOriginalName =
                device.deviceOriginalName.getOrCrash();
            final String entityOriginalName =
                device.entityOriginalName.getOrCrash();
            final String? deviceHostName = device.deviceHostName.getOrCrash();
            final String? deviceMdns = device.deviceMdns.getOrCrash();
            final String devicePort = device.devicePort.getOrCrash();
            final String cbjDeviceVendor = device.cbjDeviceVendor.getOrCrash();
            final String? devicesMacAddress =
                device.devicesMacAddress.getOrCrash();
            final String? srvResourceRecord =
                device.srvResourceRecord.getOrCrash();
            final String? ptrResourceRecord =
                device.ptrResourceRecord.getOrCrash();

            final String? deviceVendor = device.deviceVendor.getOrCrash();

            final String? deviceNetworkLastUpdate =
                device.deviceNetworkLastUpdate.getOrCrash();

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getTextIfNotNull('Ip', deviceLastKnownIp),
                  getTextIfNotNull('Device', deviceOriginalName),
                  getTextIfNotNull('Entity', entityOriginalName),
                  getTextIfNotNull('Host', deviceHostName),
                  getTextIfNotNull('mDNS', deviceMdns),
                  getTextIfNotNull('Port', devicePort),
                  getTextIfNotNull('Vendor', cbjDeviceVendor),
                  getTextIfNotNull('Mac', devicesMacAddress),
                  getTextIfNotNull('Srv', srvResourceRecord),
                  getTextIfNotNull('Ptr', ptrResourceRecord),
                  getTextIfNotNull('Network Vendor', deviceVendor),
                  getTextIfNotNull(
                    'Last Updated',
                    deviceNetworkLastUpdate,
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
