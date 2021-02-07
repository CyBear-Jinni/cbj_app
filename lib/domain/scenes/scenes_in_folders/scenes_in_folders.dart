import 'package:cybear_jinni/domain/scenes/scenes_in_folders/folder_of_scene.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'scenes_in_folders.freezed.dart';

@freezed
abstract class ScenesInFolders with _$ScenesInFolders {
  const ScenesInFolders._();

  const factory ScenesInFolders({
    @required KtList<FolderOfScene> scenesFoldersList,
  }) = _ScenesInFolders;
}
