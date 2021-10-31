import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/manage_wifi/manage_wifi_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectToHomeWiFiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocBuilder<ManageWifiBloc, ManageWifiState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              state.map(
                initial: (value) {
                  return const Text('Initial');
                },
                loading: (_) {
                  return const CircularProgressIndicator(
                    backgroundColor: Colors.cyan,
                    strokeWidth: 5,
                  );
                },
                loaded: (l) {
                  context.router.replace(const OpenAccessPointRoute());
                  return const Text('Loaded');
                },
                error: (e) {
                  return const Text('Failure');
                },
                wifiIsEnabled: (WifiIsEnabled value) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: const Text(
                          'Smart Devices need your home WiFi name and '
                          'password in order to connect.',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.greenAccent.withOpacity(0.3),
                            prefixIcon: Icon(
                              Icons.wifi,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                            labelText: 'WiFi Name',
                            labelStyle: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          autocorrect: false,
                          onChanged: (value) {
                            context
                                .read<ManageWifiBloc>()
                                .add(ManageWifiEvent.wifiSsidChanged(value));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.greenAccent.withOpacity(0.3),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          autocorrect: false,
                          onChanged: (value) {
                            context
                                .read<ManageWifiBloc>()
                                .add(ManageWifiEvent.wifiPassChanged(value));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.pinkAccent,
                          ),
                        ),
                        onPressed: () {
                          context
                              .read<ManageWifiBloc>()
                              .add(ManageWifiEvent.connectToWiFi());
                        },
                        child: Text(
                          'Connect to WiFi',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                wifiIsDisabled: (WifiIsDisabled value) {
                  return const Text('WiFi is disabled');
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.greenAccent,
                  ),
                ),
                onPressed: () {
                  context.router.replace(const OpenAccessPointRoute());
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
