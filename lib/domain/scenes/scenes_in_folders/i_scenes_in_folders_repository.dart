import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IIScenesInFoldersRepository {
  Future<Option<KtList<String>>> getAllRoomsWithScenes();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchAll();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchUncompleted();
// Future<Either<InitiateHomeFailure, Unit>> create(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> update(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> delete(InitiateHome note);
}
