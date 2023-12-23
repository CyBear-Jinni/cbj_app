import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/pages/plus_button/widgets/plus_button_wighet.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PlusButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextAtom('Add and Manage'),
        backgroundColor: Colors.purple.withOpacity(0.7),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      body: PlusButtonWidget(),
    );
  }
}
