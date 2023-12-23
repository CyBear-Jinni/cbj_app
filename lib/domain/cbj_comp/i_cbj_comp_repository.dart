import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybearjinni/infrastructure/cbj_app_server_d.dart';
import 'package:dartz/dartz.dart';

part 'package:cybearjinni/infrastructure/cbj_comp_repository.dart';

abstract interface class ICBJCompRepository {
  static ICBJCompRepository? _instance;

  static ICBJCompRepository get instance {
    return _instance ??= _CBJCompRepository();
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
