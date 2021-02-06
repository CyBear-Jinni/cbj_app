import 'package:dartz/dartz.dart';

abstract class IInitializeHomeRepository {
  Future<Option<Unit>> initializingNewHome();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchAll();
// Stream<Either<InitiateHomeFailure, KtList<InitiateHome>>> watchUncompleted();
// Future<Either<InitiateHomeFailure, Unit>> create(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> update(InitiateHome note);
// Future<Either<InitiateHomeFailure, Unit>> delete(InitiateHome note);
}
