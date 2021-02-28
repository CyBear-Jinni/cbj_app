import 'package:cybear_jinni/application/cbj_comp/cbj_comp_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class ScanForNewCBJCompsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return BlocBuilder<CBJCompBloc, CBJCompState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Text('Initial'),
          loadInProgress: (value) {
            return Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Scanning For Devices',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            );
          },
          loadSuccess: (state) {
            return const Text('Loaded success');
          },
          loadSuccessTemp: (state) {
            return const Text('Load success temp');
          },
          loadFailure: (state) {
            return const Text('Load Failure');
          },
          error: (state) {
            return const Text('Error');
          },
        );
      },
    );
  }
}
