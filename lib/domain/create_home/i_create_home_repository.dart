import 'package:dartz/dartz.dart';

abstract class ICreateHomeRepository {
  Future<Option<Unit>> createNewHome();
}
