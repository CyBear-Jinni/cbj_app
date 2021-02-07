import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IIScenesInFoldersRepository {
  Future<Either<ScenesInFoldersFailures, ScenesInFolders>>
      getAllRoomsWithScenes();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchAll();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchUncompleted();
// Future<Either<InitiateHomeFailure, Unit>> create(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> update(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> delete(InitiateHome note);
}
