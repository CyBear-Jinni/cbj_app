import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ICBJCompRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<CBJCompFailure, Unit>> shutdownServer();

  Stream<Either<CBJCompFailure, String>> getConnectedComputersIP();

  Future<Either<CBJCompFailure, CBJCompEntity>> getInformationFromDeviceByIp(
      String compIp);

  Future<Either<CBJCompFailure, Unit>> devicesList(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> create(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> update(CBJCompEntity cBJCompEntity);
}
