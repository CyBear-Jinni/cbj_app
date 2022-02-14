import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SceneWidget extends StatelessWidget {
  const SceneWidget(this.currentScene);

  final SceneCbj currentScene;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FolderOfScenesBloc, FolderOfScenesState>(
      listener: (context, FolderOfScenesState state) {
        state.map(
          (value) => (v) {},
          loading: (loadingNow) {},
          error: (errorNow) {
            FlushbarHelper.createError(message: 'Error');
          },
          loadedEmptyScens: (LoadedEmptyScens value) {},
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
                  primary: Color(currentScene.backgroundColor),
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
                    currentScene.name,
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
          loadedEmptyScens: (LoadedEmptyScens value) {
            return const Center(
              child: Text(
                'You can add scene in the plus button',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
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
