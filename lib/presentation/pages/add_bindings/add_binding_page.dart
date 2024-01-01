import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/add_bindings/widgets/add_binding_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new binding
@RoutePage()
class AddBindingPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopBarMolecule(
              pageName: 'Add Binding',
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            AddBindingWidget(),
          ],
        ),
      ),
    );
  }
}
