import 'package:cybear_jinni/application/hub_in_network/hub_in_network_bloc.dart';
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
          initial: (_) => Text('go'),
          loadInProgress: (_) => SizedBox(
            child: const CircularProgressIndicator(),
            height: 70,
            width: 70,
          ),
          loadSuccess: (_) => Text('Found hub'),
          loadFailure: (_) => Text('Got failure'),
          lightError: (_) => Text('Got Error'),
        );
      },
    );
  }
}
