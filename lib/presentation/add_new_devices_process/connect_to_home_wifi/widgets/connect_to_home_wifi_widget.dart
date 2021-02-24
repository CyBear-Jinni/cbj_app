import 'package:cybear_jinni/application/manage_wifi/manage_wifi_bloc.dart';
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
                  return const Text('Loaded');
                },
                error: (e) {
                  return const Text('Failure');
                },
                wifiIsEnabled: (WifiIsEnabled value) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.greenAccent.withOpacity(0.3),
                              prefixIcon: const Icon(
                                Icons.wifi,
                                color: Colors.white,
                              ),
                              labelText: 'WiFi Name',
                              labelStyle: const TextStyle(color: Colors.white)),
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
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.greenAccent.withOpacity(0.3),
                            prefixIcon: const Icon(
                              Icons.vpn_key,
                              color: Colors.white,
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.white),
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
                        height: 30,
                      ),
                      FlatButton(
                        color: Colors.pinkAccent,
                        onPressed: () {
                          context
                              .read<ManageWifiBloc>()
                              .add(ManageWifiEvent.connectToWiFi());
                        },
                        child: const Text(
                          'Connect to WiFi',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: const Text(
                          'Smart Devices need your home WiFi name and '
                          'password in order to connect.',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  );
                },
                wifiIsDisabled: (WifiIsDisabled value) {
                  return const Text('WiFi is disabled');
                },
              )
            ],
          ),
        );
      },
    );
  }
}
