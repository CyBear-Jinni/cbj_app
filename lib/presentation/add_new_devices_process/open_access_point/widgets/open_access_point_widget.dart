import 'package:auto_route/auto_route.dart';
import 'package:clipboard/clipboard.dart';
import 'package:cybear_jinni/application/manage_access_point/manage_access_point_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OpenAccessPointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocBuilder<ManageAccessPointBloc, ManageAccessPointState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              state.map(
                initial: (value) {
                  return TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.greenAccent,
                        ),
                      ),
                      onPressed: () {
                        context
                            .read<ManageAccessPointBloc>()
                            .add(ManageAccessPointEvent.initialized());
                      },
                      child: const Text('Create Access Pint'));
                },
                loading: (_) {
                  return const CircularProgressIndicator(
                    backgroundColor: Colors.cyan,
                    strokeWidth: 5,
                  );
                },
                loaded: (l) {
                  // ExtendedNavigator.of(context)
                  //     .push(Routes.openAccessPointPage);
                  return const Text('Loaded');
                },
                error: (e) {
                  return const Text('Failure');
                },
                iOSDevice: (IOSDevice value) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: const Text(
                          'Please Open Access point with the following '
                          'credentials in the OS Settings.',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.black12,
                              ),
                            ),
                            onPressed: () {
                              FlutterClipboard.copy('CyBear Jinni').then(
                                (value) => Fluttertoast.showToast(
                                    msg: 'Copy',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.SNACKBAR,
                                    backgroundColor: Colors.lightBlue,
                                    textColor: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 16.0),
                              );
                            },
                            child: Column(
                              children: const <Widget>[
                                Text(
                                  'Hotspot name:',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Text(
                                  'CyBear Jinni',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.black12,
                              ),
                            ),
                            onPressed: () {
                              FlutterClipboard.copy('CyBear Jinni').then(
                                (value) => Fluttertoast.showToast(
                                    msg: 'Copy',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.SNACKBAR,
                                    backgroundColor: Colors.lightBlue,
                                    textColor: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 16.0),
                              );
                            },
                            child: Column(
                              children: const <Widget>[
                                Text(
                                  'Hotspot password:',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Text(
                                  'CyBear Jinni',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                },
                cantDetermineAccessPointOpenOrNot:
                    (CantDetermineAccessPointOpenOrNot value) {
                  return const Text('CantDetermineAccessPointOpenOrNot');
                },
                accessPointIsNotOpen: (AccessPointIsNotOpen value) {
                  return const Text('AccessPointIsNotOpen');
                },
                accessPointIsOpen: (AccessPointIsOpen value) {
                  ExtendedNavigator.of(context)
                      .replace(Routes.scanForNewCBJCompsPage);
                  return const Text('AccessPointIsOpen');
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.greenAccent,
                  ),
                ),
                onPressed: () {
                  context
                      .read<ManageAccessPointBloc>()
                      .add(ManageAccessPointEvent.doesAccessPointOpen());
                },
                child: const Text('Next'),
              ),
            ],
          ),
        );
      },
    );
  }
}
