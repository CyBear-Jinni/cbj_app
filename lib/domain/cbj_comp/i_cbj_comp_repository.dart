import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybearjinni/infrastructure/cbj_app_server_d.dart';
import 'package:dartz/dartz.dart';

part 'package:cybearjinni/infrastructure/cbj_comp_repository.dart';

abstract interface class ICbjCompRepository {
  static ICbjCompRepository? _instance;

  static ICbjCompRepository get instance {
    return _instance ??= _CbjCompRepository();
  }

  Future<Either<CbjCompFailure, Unit>> shutdownServer();

  Stream<Either<CbjCompFailure, String>> getConnectedComputersIP();

  Future<Either<CbjCompFailure, CbjCompEntity>> getInformationFromDeviceByIp(
    String compIp,
  );

  Future<Either<CbjCompFailure, Unit>> firstSetup(CbjCompEntity cBJCompEntity);

  Future<Either<CbjCompFailure, Unit>> devicesList(CbjCompEntity cBJCompEntity);

  Future<Either<CbjCompFailure, Unit>> create(CbjCompEntity cBJCompEntity);

  Future<Either<CbjCompFailure, Unit>> updateCompInfo(CbjCompEntity compEntity);
}
