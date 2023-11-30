import 'package:auto_route/auto_route.dart';
import 'package:clipboard/clipboard.dart';
import 'package:cybear_jinni/application/manage_access_point/manage_access_point_bloc.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OpenAccessPointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    child: const TextAtom('Create Access Pint'),
                  );
                },
                loading: (_) {
                  return const CircularProgressIndicatorAtom();
                },
                loaded: (l) {
                  // ExtendedNavigator.of(context)
                  //     .push(Routes.openAccessPointPage);
                  return const TextAtom('Loaded');
                },
                error: (e) {
                  return const TextAtom('Failure');
                },
                iOSDevice: (IOSDevice value) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: const TextAtom(
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
                                      .bodyLarge!
                                      .color,
                                  fontSize: 16.0,
                                ),
                              );
                            },
                            child: const Column(
                              children: <Widget>[
                                TextAtom(
                                  'Hotspot name:',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                TextAtom(
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
                                      .bodyLarge!
                                      .color,
                                  fontSize: 16.0,
                                ),
                              );
                            },
                            child: const Column(
                              children: <Widget>[
                                TextAtom(
                                  'Hotspot password:',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                TextAtom(
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
                  return const TextAtom('CantDetermineAccessPointOpenOrNot');
                },
                accessPointIsNotOpen: (AccessPointIsNotOpen value) {
                  return const TextAtom('AccessPointIsNotOpen');
                },
                accessPointIsOpen: (AccessPointIsOpen value) {
                  context.router.replace(const ScanForNewCBJCompsRoute());
                  return const TextAtom('AccessPointIsOpen');
                },
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: const TextAtom(
                  "Currently we can't verify that you have opened Access pont.\n"
                  'Press next only after you have preformed the actions above!.',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 30,
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
                child: const TextAtom('Next'),
              ),
            ],
          ),
        );
      },
    );
  }
}
