import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/plus_button/widgets/plus_button_wighet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class PlusButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Add and Manage',
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: (_) => context.router.pop(),
          ),
          PlusButtonWidget(),
        ],
      ),
    );
  }
}
