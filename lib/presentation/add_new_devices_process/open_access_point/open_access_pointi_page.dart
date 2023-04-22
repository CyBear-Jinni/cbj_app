import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/manage_access_point/manage_access_point_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/open_access_point/widgets/open_access_point_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class OpenAccessPointPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
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
              pageName: 'Add Devices',
              rightIcon: null,
              rightIconFunction: () {},
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
            Expanded(
              child: BlocProvider(
                create: (context) => getIt<ManageAccessPointBloc>()
                  ..add(ManageAccessPointEvent.initialized()),
                child: OpenAccessPointWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
