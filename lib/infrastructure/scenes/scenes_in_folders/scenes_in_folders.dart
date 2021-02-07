import 'package:cybear_jinni/domain/scenes/scenes_in_folders/i_scenes_in_folders_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IIScenesInFoldersRepository)
class IScenesInFoldersRepository implements IIScenesInFoldersRepository {
  @override
  Future<Option<KtList<String>>> getAllRoomsWithScenes() async {
    // Convert a existing List to KtList
    final scenesRoomsList = [
      'Guy',
      'Sima and Ami',
      'South bathroom',
      // https://live.staticflickr.com/8430/7731774826_7c1627cfcd_h.jpg
      'Ami office',
      'North bathroom',
      // https://live.staticflickr.com/1256/1471268812_c73d690f26_h.jpg
      'Sima office',
      'Omer',
      'Laundry room',
      // https://live.staticflickr.com/7034/13522716673_1e13298046_h.jpg
      'kitchen',
      // https://images.unsplash.com/photo-1601334168590-1fbdffad285e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80
      'Dining Room',
      //https://images.unsplash.com/photo-1598546720078-8659863bc47d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80
      'Living room',
    ];
    final scenesRoomsKtList = scenesRoomsList.toImmutableList();

    return optionOf(scenesRoomsKtList);
  }
}
