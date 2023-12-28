import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/add_new_automation_process/add_action/widgets/action_choose_information.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage<List<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>>()
class AddActionPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Add Action',
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: (_) => context.router.pop(),
          ),
          ActionChooseInformation(),
        ],
      ),
    );
  }
}
