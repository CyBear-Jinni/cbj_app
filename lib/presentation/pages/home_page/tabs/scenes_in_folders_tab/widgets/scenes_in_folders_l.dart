import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cybear_jinni/application/folders_of_scenes/folders_of_scenes_bloc.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScenesInFoldersL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoldersOfScenesBloc, FoldersOfScenesState>(
      builder: (context, state) {
        return state.map(
          (value) => const TextAtom('sd'),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (state) {
            return ListView.builder(
              reverse: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final RoomEntity sceneFolder = state.foldersOfScenes[index];
                return scenesFoldersWidget(
                  context,
                  sceneFolder,
                );
              },
              itemCount: state.foldersOfScenes.length,
            );
          },
          loadedEmpty: (LoadedEmpty value) {
            return const Center(
              child: TextAtom(
                'You can add automations in the plus button',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            );
          },
          error: (_) {
            return const TextAtom('Error');
          },
        );
      },
    );
  }

  Widget scenesFoldersWidget(
    BuildContext context,
    RoomEntity folderOfScenes,
  ) {
    const double borderRadius = 5;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
            folderOfScenes.background.getOrCrash(),
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
        border: Border.all(
          color: Colors.black.withOpacity(0.7),
          width: 0.4,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.zero,
          ),
        ),
        onPressed: () {
          context.router.push(
            ScenesRoute(
              folderOfScenes: folderOfScenes,
            ),
          );
        },
        child: Column(
          children: [
            const SizedBox(
              height: 130,
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
              child: TextAtom(
                folderOfScenes.cbjEntityName.getOrCrash(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
