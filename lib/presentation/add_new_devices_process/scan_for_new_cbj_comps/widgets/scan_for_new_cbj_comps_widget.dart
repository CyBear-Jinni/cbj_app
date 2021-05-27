import 'package:cybear_jinni/application/cbj_comp/cbj_comp_bloc.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_devices_process/scan_for_new_cbj_comps/widgets/cbj_comp_card_with_devices_controll.dart';
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
                    color: (Theme.of(context).textTheme.bodyText1!.color)!,
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
            bool existInCompList = false;
            final CBJCompEntity compEntity = state.devices;
            try {
              cbjCompEntityList.forEach((element) {
                if (element.compUuid!.getOrCrash() ==
                    compEntity.compUuid!.getOrCrash()) {
                  existInCompList = true;
                }
              });

              if (!existInCompList && compEntity.compUuid!.getOrCrash() != '') {
                cbjCompEntityList.add(state.devices);
              }
            } catch (e) {}
            if (cbjCompEntityList != null && cbjCompEntityList.isEmpty) {
              return const Text('Device is not supported');
            }

            return ListView.builder(
              reverse: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final compEntity = cbjCompEntityList[index];
                // return CBJCompCard(cbjCompEntity: compEntity);
                return BlocProvider(
                  create: (context) => getIt<DeviceActorBloc>()
                    ..add(const DeviceActorEvent.initialized()),
                  child: CBJCompCardWithDevicesControll(
                    cbjCompEntity: compEntity,
                  ),
                );
              },
              itemCount: cbjCompEntityList.length,
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
