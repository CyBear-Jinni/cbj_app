import 'package:cybear_jinni/application/scenes/scenes_in_folders/scenes_in_folders_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color/random_color.dart';

class ScenesInFoldersL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocBuilder<ScenesInFoldersBloc, ScenesInFoldersState>(
      builder: (context, state) {
        return state.map(
          (value) => const Text('sd'),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (state) {
            print('asd $state');

            return ListView.builder(
              itemBuilder: (context, index) {
                final scene_folder =
                    state.scenesFolders.scenesFoldersList[index];
                return ScenesFoldersWidget(
                    scene_folder.name, scene_folder.backgroundImageUrl);
              },
              itemCount: state.scenesFolders.scenesFoldersList.size,
            );
          },
          error: (_) {
            return const Text('Error');
          },
        );
      },
    );
  }

  Widget ScenesFoldersWidget(String folderName, String backgroundImageUrl) {
    const double borderRadius = 5;
    final ColorBrightness lightColorB = ColorBrightness.light;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
              backgroundImageUrl,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
          border: Border.all(
            color: Colors.white,
            width: 0.4,
          ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: FlatButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(borderRadius),
                    bottomLeft: Radius.circular(borderRadius),
                  ),
                ),
                child: Text(
                  folderName,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
