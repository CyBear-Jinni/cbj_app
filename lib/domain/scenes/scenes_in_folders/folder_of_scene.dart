import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scenes/scene.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'folder_of_scene.freezed.dart';

@freezed
abstract class FolderOfScene with _$FolderOfScene {
  const FolderOfScene._();

  const factory FolderOfScene({
    @required UniqueId id,
    @required String name,
    @required KtList<Scene> scenesInFolder,
    String backgroundImageUrl,
    Color backgroundColor,
  }) = _FolderOfScene;
}
