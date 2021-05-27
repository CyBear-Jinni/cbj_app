import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChooseDeviceVendorToAddPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: const [0.06, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.grey,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        child: Column(
          children: [
            TopNavigationBar(
              'Add Devices',
              null,
              () {},
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
              child: Text(
                'Choose Device Vendor',
                style: TextStyle(
                    fontSize: 25,
                    color: (Theme.of(context).textTheme.bodyText1!.color)!),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.purple.withOpacity(0.7),
                  ),
                ),
                onPressed: () {
                  ExtendedNavigator.of(context)
                      .push(Routes.connectToHomeWifiPage);
                },
                child: Text(
                  'CyBear Jinni',
                  style: TextStyle(
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
