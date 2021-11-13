import 'package:cybear_jinni/application/hub_in_network/hub_in_network_bloc.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CbjHubInNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
              return SizedBox(
                height: 100,
                child: Column(
                  children: [
                    const Text("Can't find a Hub in your network"),
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
                ),
              );
            } else if (failure.hubFailure ==
                const HubFailures.automaticHubSearchNotSupportedOnWeb()) {
              return const Text(
                'Automatic search does not supported on the web',
              );
            }
            return const Text('Unexpected error');
          },
          lightError: (_) => const Text('Got Error'),
        );
      },
    );
  }
}
