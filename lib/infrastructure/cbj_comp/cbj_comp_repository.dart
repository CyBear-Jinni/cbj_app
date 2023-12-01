import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:cybear_jinni/infrastructure/cbj_app_server/cbj_app_server_d.dart';
import 'package:dartz/dartz.dart';

class CBJCompRepository implements ICBJCompRepository {
  @override
  Future<Either<CBJCompFailure, Unit>> shutdownServer() async {
    await CreateTheCBJAppServer.shutdownServer();
    return right(unit);
  }

  @override
  Future<Either<CBJCompFailure, Unit>> firstSetup(
    CBJCompEntity cBJCompEntity,
  ) async {
    try {
      return left(const CBJCompFailure.unexpected());
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }

  @override
  Future<Either<CBJCompFailure, Unit>> create(CBJCompEntity deviceEntity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<CBJCompFailure, Unit>> devicesList(CBJCompEntity deviceEntity) {
    // TODO: implement devicesList
    throw UnimplementedError();
  }

  @override
  Future<Either<CBJCompFailure, Unit>> updateCompInfo(
    CBJCompEntity compEntity,
  ) async {
    try {
      return left(const CBJCompFailure.unexpected());
    } catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
  }

  @override
  Stream<Either<CBJCompFailure, String>> getConnectedComputersIP() async* {
    try {
      final CreateTheCBJAppServer createTheCBJAppServer =
          CreateTheCBJAppServer();

      final StreamController<CompInfoSB> compInfoSBSteam =
          StreamController<CompInfoSB>();

      createTheCBJAppServer.createServer(compInfoSBSteam);

      yield* compInfoSBSteam.stream.map((CompInfoSB compInfoSB) {
        return right(compInfoSB.compIP);
      });
    } catch (e) {
      yield left(const CBJCompFailure.unexpected());
    }
    yield left(const CBJCompFailure.unexpected());
  }

  @override
  Future<Either<CBJCompFailure, CBJCompEntity>> getInformationFromDeviceByIp(
    String compIp,
  ) async {
    try {} catch (e) {
      return left(const CBJCompFailure.unexpected());
    }
    return left(const CBJCompFailure.unexpected());
  }
}
