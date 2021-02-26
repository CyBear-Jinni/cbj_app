import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ICBJCompRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Stream<Either<CBJCompFailure, KtList<CBJCompEntity>>> watchAll();

  Future<Either<CBJCompFailure, Unit>> devicesList(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> create(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> update(CBJCompEntity cBJCompEntity);
}
