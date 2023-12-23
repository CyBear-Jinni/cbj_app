import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPageSmartDevices extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: const <double>[0, 0, 0, 1],
            colors: <Color>[
              Theme.of(context).primaryColor,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            TopBarMolecule(
              pageName: 'Smart Devices Settings',
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.center,
              child: TextAtom(
                'Open Access Point',
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Expanded(
            //   child: BlocProvider(
            //     create: (context) => getIt<ManageAccessPointBloc>()
            //       ..add(ManageAccessPointEvent.initialized()),
            //     child: OpenAccessPointWidget(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
