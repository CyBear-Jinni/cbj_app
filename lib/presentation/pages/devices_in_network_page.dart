import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/molecules/list_view_separated_molecule.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DevicesInNetworkPage extends StatefulWidget {
  @override
  State<DevicesInNetworkPage> createState() => _DevicesInNetworkPageState();
}

class _DevicesInNetworkPageState extends State<DevicesInNetworkPage> {
  List<int>? allDevices;

  @override
  void initState() {
    super.initState();
    initializeAllDevices();
  }

  initializeAllDevices() {}

  @override
  Widget build(BuildContext context) {
    if (allDevices == null) {
      return const CircularProgressIndicator();
    }

    return ListViewSeparatedMolecule(
      itemCount: allDevices!.length,
      itemBuilder: (context, i) {
        return const SizedBox();
      },
    );
  }
}
