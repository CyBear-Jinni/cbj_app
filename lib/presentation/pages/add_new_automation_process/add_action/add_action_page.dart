import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:cybear_jinni/presentation/pages/add_new_automation_process/add_action/widgets/action_choose_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage<List<MapEntry<DeviceEntityBase, MapEntry<String?, String?>>>>()
class AddActionPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: HexColor('#303030'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: HexColor('#303030'),
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
