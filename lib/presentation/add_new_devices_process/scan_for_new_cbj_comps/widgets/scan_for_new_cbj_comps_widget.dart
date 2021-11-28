import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/cbj_comp/cbj_comp_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class ScanForNewCBJCompsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;
    final List<CBJCompEntity> cbjCompEntityList = [];

    return BlocBuilder<CBJCompBloc, CBJCompState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Text('Initial'),
          loadInProgress: (value) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Scanning For Devices',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 26,
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            );
          },
          loadSuccess: (state) {
            final CBJCompEntity compEntity = CBJCompEntity.empty().copyWith(
              lastKnownIp: CBJCompLastKnownIp(state.securityBearIp),
            );

            context.router.replace(
              ConfigureNewCbjCompRoute(cbjCompEntity: compEntity),
            );

            return const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
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
