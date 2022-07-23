import 'package:cybear_jinni/application/hub_in_network/hub_in_network_bloc.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CbjHubInNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HubInNetworkBloc, HubInNetworkState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Text('Go'),
          loadInProgress: (_) => const SizedBox(
            height: 70,
            width: 70,
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (_) => const Text('Found hub'),
          loadFailure: (failure) {
            if (failure.hubFailure ==
                const HubFailures.cantFindHubInNetwork()) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Can't find a Hub in your network."),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.8),
                        ),
                        onPressed: () {
                          context.read<HubInNetworkBloc>().add(
                                const HubInNetworkEvent.searchHubInNetwork(),
                              );
                        },
                        child: const Text('Retry'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.8),
                        ),
                        onPressed: () {
                          context.read<HubInNetworkBloc>().add(
                                const HubInNetworkEvent
                                    .isHubIpCheckBoxChangedState(
                                  '',
                                  false,
                                ),
                              );
                        },
                        child: const Text('Retry Manually'),
                      ),
                    ],
                  ),
                ],
              );
            } else if (failure.hubFailure ==
                const HubFailures.automaticHubSearchNotSupportedOnWeb()) {
              return const Text(
                'Automatic search does not supported on the web.',
              );
            } else if (failure.hubFailure ==
                const HubFailures
                    .findingHubWhenConnectedToEthernetCableIsNotSupported()) {
              context.read<HubInNetworkBloc>().add(
                    const HubInNetworkEvent.isHubIpCheckBoxChangedState(
                      '',
                      false,
                    ),
                  );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Unexpected error"),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.8),
                  ),
                  onPressed: () {
                    context.read<HubInNetworkBloc>().add(
                          const HubInNetworkEvent.searchHubInNetwork(),
                        );
                  },
                  child: const Text('Retry'),
                ),
              ],
            );
          },
          lightError: (_) => const Text('Got Error'),
          tryIpManually: (TryIpManually tryIpManuallyValue) {
            String anyIpOnTheNetwork = tryIpManuallyValue.ipOnTheNetwork;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Automatic search currently supported only on WiFi.\n"
                  "Please enter manually any IP on the network or connect the device to WiFi and try again.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      prefixIcon: FaIcon(FontAwesomeIcons.ethernet),
                      labelText: 'Any IP on the network',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    autocorrect: false,
                    initialValue: anyIpOnTheNetwork,
                    onChanged: (value) {
                      anyIpOnTheNetwork = value;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Is Hub IP',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Checkbox(
                      value: tryIpManuallyValue.isHubIp,
                      onChanged: (bool? value) {
                        context.read<HubInNetworkBloc>().add(
                              HubInNetworkEvent.isHubIpCheckBoxChangedState(
                                anyIpOnTheNetwork,
                                value!,
                              ),
                            );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    if (anyIpOnTheNetwork == '') {
                      showDialog(
                        context: context,
                        builder: (_) => const AlertDialog(
                          title: Text(
                            'Please insert valid IP before clicking the Search Button',
                          ),
                        ),
                      );
                      return;
                    }
                    context.read<HubInNetworkBloc>().add(
                          HubInNetworkEvent.searchHubUsingAnyIpOnTheNetwork(
                            anyIpOnTheNetwork,
                            tryIpManuallyValue.isHubIp,
                          ),
                        );
                  },
                  child: const Text(
                    'Search',
                  ),
                ),
                const SizedBox(height: 40),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.8),
                  ),
                  onPressed: () {
                    context.read<HubInNetworkBloc>().add(
                          const HubInNetworkEvent.searchHubInNetwork(),
                        );
                  },
                  child: const Text('Retry'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
