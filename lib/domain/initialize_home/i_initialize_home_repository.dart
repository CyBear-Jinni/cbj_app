import 'package:dartz/dartz.dart';

abstract class IInitializeHomeRepository {
  Future<Option<Unit>> initializingNewHome();
}
