import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cybear_jinni/application/scene/scene_bloc.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SceneWidget extends StatelessWidget {
  const SceneWidget(this.currentScene);

  final SceneCbjEntity currentScene;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SceneBloc, SceneState>(
      listener: (context, SceneState state) {
        state.map(
          (value) => (v) {},
          loading: (loadingNow) {},
          error: (errorNow) {
            FlushbarHelper.createError(message: 'Error');
          },
          loaded: (_) => const Text('loaded'),
        );
      },
      builder: (context, state) {
        return state.map(
          (value) => const Text('value'),
          loading: (_) => const Text('Loading'),
          loaded: (sceneState) {
            return Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(
                    int.parse(currentScene.backgroundColor.getOrCrash()),
                  ),
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      width: 0.6,
                    ),
                  ),
                ),
                onPressed: () {
                  HapticFeedback.lightImpact();

                  Fluttertoast.showToast(
                    msg: 'Activating Scene',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.purple,
                    textColor: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 16.0,
                  );

                  context
                      .read<SceneBloc>()
                      .add(const SceneEvent.activateScene());

                  // smartDevicesWithWish
                  //     .forEach((SmartDeviceObject key, List<DeviceActions> value) {
                  //   for (final DeviceActions deviceActionForSmartDevice in value) {
                  //     key.executeWish(wishEnumForSmartDevice);
                  //   }
                  // });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black54,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    currentScene.name.getOrCrash(),
                    style: TextStyle(
                      fontSize: 23,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
          error: (_) => const Text('Error'),
        );
      },
    );
  }
}
