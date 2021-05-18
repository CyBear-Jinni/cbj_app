import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CBJCompCard extends StatelessWidget {
  final CBJCompEntity cbjCompEntity;

  const CBJCompCard({
    @required this.cbjCompEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
                bottom: BorderSide(
                  color: Theme.of(context).textTheme.bodyText1.color,
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
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color),
                            ),
                          ),
                        );
                      } else {
                        return Text(
                          'Type not supported ${compEntity.type.getOrCrash()}'
                          ' yet',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
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
              ExtendedNavigator.of(context).replace(
                Routes.configureNewCbjCompPage,
                arguments: ConfigureNewCbjCompPageArguments(
                    cbjCompEntity: cbjCompEntity),
              );
            },
            child: Text(
              'Set up computer',
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
          ),
        ],
      ),
    );
  }
}
