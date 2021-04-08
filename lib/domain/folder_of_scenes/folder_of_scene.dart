import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'folder_of_scene.freezed.dart';

@freezed
abstract class FolderOfScenes with _$FolderOfScenes {
  const FolderOfScenes._();

  const factory FolderOfScenes({
    @required UniqueId id,
    @required String name,
    KtList<Either<SceneFailure, Scene>> scenesInFolder,
    String backgroundImageUrl,
    Color backgroundColor,
    KtList<String> folderTags,
  }) = _FolderOfScenes;
}
