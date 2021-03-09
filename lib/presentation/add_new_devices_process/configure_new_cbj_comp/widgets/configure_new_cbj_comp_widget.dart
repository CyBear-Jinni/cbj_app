import 'package:cybear_jinni/application/devices/device_actor/device_actor_bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigureNewCbjCompWidgets extends StatelessWidget {
  ConfigureNewCbjCompWidgets({
    @required this.cbjCompEntity,
  });

  final CBJCompEntity cbjCompEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Configure devices',
          style: TextStyle(color: Colors.white),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: true,
                      onChanged: (bool value) {},
                    ),
                    const Text(
                      'All devices in the same room',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Text(
                  'Room Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Room Name',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                if (cbjCompEntity.cBJCompDevices.getOrCrash().size < 1)
                  const Text('')
                else
                  ListView.builder(
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
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
              color: Colors.greenAccent,
              onPressed: () {},
              child: const Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
