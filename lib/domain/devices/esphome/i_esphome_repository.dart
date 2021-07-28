import 'package:cybear_jinni/domain/devices/esphome/esphome_device_entity.dart';
import 'package:cybear_jinni/domain/devices/esphome/esphome_failures.dart';
import 'package:cybear_jinni/infrastructure/devices/esphome/esphome_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IEspHomeRepository {
  // watch EspHome
  // watch only a
  // CUD

  // C Read UD

  Future<void> initiateHubConnection();

  Future<Either<EspHomeFailure, KtList<EspHomeDE?>>> getAllEspHome();

  Future<Either<EspHomeFailure, KtList<EspHomeDtos?>>> getAllEspHomeAsDto();

  Stream<Either<EspHomeFailure, KtList<EspHomeDE?>>> watchAll();

  Stream<Either<EspHomeFailure, KtList<EspHomeDE?>>> watchLights();

  Stream<Either<EspHomeFailure, KtList<EspHomeDE?>>> watchBlinds();

  Stream<Either<EspHomeFailure, KtList<EspHomeDE?>>> watchBoilers();

  Stream<Either<EspHomeFailure, KtList<EspHomeDE?>>> watchUncompleted();

  Future<Either<EspHomeFailure, Unit>> create(EspHomeDE espHome);

  /// Update document in the database in the following fields
  Future<Either<EspHomeFailure, Unit>> updateDatabase({
    required String pathOfField,
    required Map<String, dynamic> fieldsToUpdate,
    String forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> updateWithEspHome({
    required EspHomeDE espHome,
    String? forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> turnOnEspHomes({
    required List<String>? espHomeId,
    String forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> turnOffEspHomes({
    required List<String>? espHomeId,
    String forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> moveUpBlinds({
    required List<String>? espHomeId,
    String forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> stopBlinds({
    required List<String>? espHomeId,
    String forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> moveDownBlinds({
    required List<String>? espHomeId,
    String forceUpdateLocation,
  });

  Future<Either<EspHomeFailure, Unit>> delete(EspHomeDE espHome);
}
