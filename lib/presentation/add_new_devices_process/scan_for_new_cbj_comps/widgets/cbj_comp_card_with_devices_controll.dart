import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CBJCompCardWithDevicesControll extends StatelessWidget {
  final CBJCompEntity cbjCompEntity;

  const CBJCompCardWithDevicesControll({
    @required this.cbjCompEntity,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceActorBloc, DeviceActorState>(
        builder: (context, state) {
      return Container(
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.white,
                  ),
                  bottom: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              child: cbjCompEntity.cBJCompDevices.getOrCrash().size < 1
                  ? const Text('')
                  : ListView.builder(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        final DeviceEntity compEntity =
                            cbjCompEntity.cBJCompDevices.getOrCrash()[index];
                        if (compEntity.type.getOrCrash() == 'Light') {
                          return Center(
                            child: BlocProvider(
                              create: (context) => getIt<DeviceActorBloc>(),
                              child: Text(
                                compEntity.defaultName.getOrCrash(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        } else {
                          return Text(
                            'Type not supported ${compEntity.type.getOrCrash()}'
                            ' yet',
                            style: const TextStyle(color: Colors.white),
                          );
                        }
                      },
                      itemCount: cbjCompEntity.cBJCompDevices.getOrCrash().size,
                    ),
            ),
            const SizedBox(
              height: 30,
            ),
            FlatButton(
              color: Colors.greenAccent,
              onPressed: () {
                ExtendedNavigator.of(context).push(
                  Routes.configureNewCbjCompPage,
                  arguments: ConfigureNewCbjCompPageArguments(
                      cbjCompEntity: cbjCompEntity),
                );
              },
              child: const Text(
                'Set up computer',
                style: TextStyle(color: Colors.white),
              ),
            ),
            state.map(
              initial: (_) => const Text(
                'Initial',
                style: TextStyle(color: Colors.white),
              ),
              actionInProgress: (_) => const Text(
                'actionInProgress',
                style: TextStyle(color: Colors.white),
              ),
              deleteFailure: (_) => const Text(
                'deleteFailure',
                style: TextStyle(color: Colors.white),
              ),
              deleteSuccess: (_) => const Text(
                'deleteSuccess',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      );
    });
  }
}
// CBJCompBloc
