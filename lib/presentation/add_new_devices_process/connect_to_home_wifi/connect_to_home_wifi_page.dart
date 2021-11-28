import 'package:cybear_jinni/application/manage_wifi/manage_wifi_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/connect_to_home_wifi/widgets/connect_to_home_wifi_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnectToHomeWifiPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      body: Container(
        decoration: const BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.06, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.grey,
              Colors.deepPurple,
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
                'Connect Hub To Home WiFi',
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: BlocProvider(
                create: (context) =>
                    getIt<ManageWifiBloc>()..add(ManageWifiEvent.initialized()),
                child: ConnectToHomeWiFiWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
