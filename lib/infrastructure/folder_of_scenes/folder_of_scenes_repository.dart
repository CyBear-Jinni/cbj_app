import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/i_folder_of_scenes_repository.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IFolderOfScenesRepository)
class FolderOfScenesRepository implements IFolderOfScenesRepository {
  @override
  Future<Either<FoldersOfScenesFailures, KtList<Either<SceneFailure, Scene>>>>
      getAllScenesInFolder({
    UniqueId? uniqueId,
  }) async {
    // Either<FoldersOfScenesFailures, KtList<Either<SceneFailure, Scene>>

    return right(scenesListMoc());
  }

  KtList<Either<SceneFailure, Scene>> scenesListMoc() {
    return <Either<SceneFailure, Scene>>[
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Entrance lights OFF\n-----------\n  ⛩️  🛑',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: HexColor('#E9D7FF'),
        ),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Entrance lights ON\n-----------\n   ⛩️  💡',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: Colors.lightBlueAccent,
        ),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Go to sleep\n-----------\n 😴',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: Colors.greenAccent,
        ),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Welcome home',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: HexColor('#DAEEFF'),
        ),
      ),
      right(
        Scene(
            uniqueId: UniqueId(),
            name: 'Going out',
            scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
            backgroundColor: HexColor('#FFD6CF'),),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Going for a walk',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: HexColor('#FEDE7A'),
        ),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Workout',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: Colors.blue,
        ),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Date night',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: Colors.pinkAccent,
        ),
      ),
      right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Party',
          scenesActionsToExecute: ['On All', 'Off All'].toImmutableList(),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    ].toImmutableList();
  }
}
