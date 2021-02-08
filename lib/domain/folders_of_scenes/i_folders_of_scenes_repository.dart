import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IIFoldersOfScenesRepository {
  Future<Either<FoldersOfScenesFailures, FoldersOfScenes>>
      getAllRoomsWithScenes();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchAll();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchUncompleted();
// Future<Either<InitiateHomeFailure, Unit>> create(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> update(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> delete(InitiateHome note);
}
