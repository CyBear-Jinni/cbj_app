import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scene.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scenes_failures.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/i_folders_of_scenes_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IFoldersOfScenesRepository)
class FoldersOfScenesRepository implements IFoldersOfScenesRepository {
  @override
  Future<Either<FoldersOfScenesFailures, FoldersOfScenes>>
      getAllRoomsWithScenes() async {
    try {
      // Convert a existing List to KtList
      final scenesRoomsList = FoldersOfScenes(
        foldersOfScenesList: getFolderOfScenes(),
      );

      return right(scenesRoomsList);
    } catch (e) {
      return left(const FoldersOfScenesFailures.unexpected());
    }
  }
}

KtList<Either<FolderOfScenesFailures, FolderOfScenes>> getFolderOfScenes() {
  return <Either<FolderOfScenesFailures, FolderOfScenes>>[
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Guy',
        backgroundImageUrl:
            'https://images.pexels.com/photos/2343475/pexels-photo-2343475.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Sima and Ami',
        backgroundImageUrl:
            'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'South bathroom',
        backgroundImageUrl:
            'https://live.staticflickr.com/8430/7731774826_7c1627cfcd_h.jpg',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Ami office',
        backgroundImageUrl:
            'https://live.staticflickr.com/7160/6470998009_b7107d55fe_h.jpg',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'North bathroom',
        backgroundImageUrl:
            'https://live.staticflickr.com/1256/1471268812_c73d690f26_h.jpg',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Sima office',
        backgroundImageUrl:
            'https://live.staticflickr.com/1415/4592575839_15ca3982b7_c.jpg',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Omer',
        backgroundImageUrl:
            'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Laundry room',
        backgroundImageUrl:
            'https://live.staticflickr.com/7034/13522716673_1e13298046_h.jpg',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'kitchen',
        backgroundImageUrl:
            'https://images.unsplash.com/photo-1601334168590-1fbdffad285e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Dining Room',
        backgroundImageUrl:
            'https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Living room',
        backgroundImageUrl:
            'https://images.pexels.com/photos/1457842/pexels-photo-1457842.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'OutSide',
        backgroundImageUrl:
            'https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    ),
    right(
      FolderOfScenes(
        id: UniqueId(),
        name: 'Balcony',
        backgroundImageUrl:
            'https://images.unsplash.com/photo-1564829439675-0eec72f0b695?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=700&q=80',
      ),
    ),
  ].toImmutableList();
}
