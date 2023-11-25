import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/infrastructure/cbj_comp/cbj_comp_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class ICBJCompRepository {
  static ICBJCompRepository? _instance;

  static ICBJCompRepository get instance {
    return _instance ??= CBJCompRepository();
  }

  Future<Either<CBJCompFailure, Unit>> shutdownServer();

  Stream<Either<CBJCompFailure, String>> getConnectedComputersIP();

  Future<Either<CBJCompFailure, CBJCompEntity>> getInformationFromDeviceByIp(
    String compIp,
  );

  Future<Either<CBJCompFailure, Unit>> firstSetup(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> devicesList(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> create(CBJCompEntity cBJCompEntity);

  Future<Either<CBJCompFailure, Unit>> updateCompInfo(CBJCompEntity compEntity);
}
