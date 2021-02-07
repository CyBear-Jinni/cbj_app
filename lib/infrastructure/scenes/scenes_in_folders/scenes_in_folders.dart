import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scenes/scene.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/folder_of_scene.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/i_scenes_in_folders_repository.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IIScenesInFoldersRepository)
class IScenesInFoldersRepository implements IIScenesInFoldersRepository {
  @override
  Future<Either<ScenesInFoldersFailures, ScenesInFolders>>
      getAllRoomsWithScenes() async {
    Scene scene = Scene(
      uniqueId: UniqueId(),
      scenesActionsToExecute: [
        'Turn on all lights',
        ' Turn on all lights',
      ].toImmutableList(),
    );

    final KtList<Scene> scenesListTest =
        [scene, scene, scene].toImmutableList();

    try {
      // Convert a existing List to KtList
      final scenesRoomsList = ScenesInFolders(
        scenesFoldersList: [
          FolderOfScene(
            id: UniqueId(),
            name: 'Guy',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://images.pexels.com/photos/2343475/pexels-photo-2343475.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Sima and Ami',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'South bathroom',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://live.staticflickr.com/8430/7731774826_7c1627cfcd_h.jpg',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Ami office',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://live.staticflickr.com/7160/6470998009_b7107d55fe_h.jpg',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'North bathroom',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://live.staticflickr.com/1256/1471268812_c73d690f26_h.jpg',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Sima office',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://live.staticflickr.com/1415/4592575839_15ca3982b7_c.jpg',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Omer',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Laundry room',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://live.staticflickr.com/7034/13522716673_1e13298046_h.jpg',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'kitchen',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://images.unsplash.com/photo-1601334168590-1fbdffad285e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Dining Room',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'Living room',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://images.pexels.com/photos/1457842/pexels-photo-1457842.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          ),
          FolderOfScene(
            id: UniqueId(),
            name: 'OutSide',
            scenesInFolder: scenesListTest,
            backgroundImageUrl:
                'https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          ),
        ].toImmutableList(),
      );

      return right(scenesRoomsList);
    } catch (e) {
      return left(const ScenesInFoldersFailures.unexpected());
    }
  }
}
