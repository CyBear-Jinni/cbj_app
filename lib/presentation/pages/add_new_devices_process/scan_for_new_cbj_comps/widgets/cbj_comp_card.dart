import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CBJCompCard extends StatelessWidget {
  const CBJCompCard({
    required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.orangeAccent,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).textTheme.bodyLarge!.color!,
                ),
                bottom: BorderSide(
                  color: Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
            ),
            child: cbjCompEntity.cBJCompDevices!.getOrCrash().size < 1
                ? const TextAtom('')
                : ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final GenericLightDE compEntity =
                          cbjCompEntity.cBJCompDevices!.getOrCrash()[index];
                      if (compEntity.entityTypes.getOrCrash() ==
                          EntityTypes.light.toString()) {
                        return Center(
                          child: BlocProvider(
                            create: (context) => getIt<DeviceActorBloc>(),
                            child: TextAtom(
                              compEntity.cbjEntityName.getOrCrash()!,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                          ),
                        );
                      } else {
                        return TextAtom(
                          'Type not supported '
                          '${compEntity.entityTypes.getOrCrash()} yet',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        );
                      }
                    },
                    itemCount: cbjCompEntity.cBJCompDevices!.getOrCrash().size,
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
              context.router.replace(
                ConfigureNewCbjCompRoute(cbjCompEntity: cbjCompEntity),
              );
            },
            child: TextAtom(
              'Set up computer',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
