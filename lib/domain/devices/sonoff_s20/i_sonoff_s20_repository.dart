import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_device_entity.dart';
import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_failures.dart';
import 'package:cybear_jinni/infrastructure/devices/sonoff_s20/sonoff_s20_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ISonoffS20Repository {
  // watch SonoffS20s
  // watch only a
  // CUD

  // C Read UD

  Future<void> initiateHubConnection();

  Future<Either<SonoffS20Failure, KtList<SonoffS20DE?>>> getAllSonoffS20s();

  Future<Either<SonoffS20Failure, KtList<SonoffS20Dtos?>>>
      getAllSonoffS20sAsDto();

  Stream<Either<SonoffS20Failure, KtList<SonoffS20DE?>>> watchAll();

  Stream<Either<SonoffS20Failure, KtList<SonoffS20DE?>>> watchLights();

  Stream<Either<SonoffS20Failure, KtList<SonoffS20DE?>>> watchBlinds();

  Stream<Either<SonoffS20Failure, KtList<SonoffS20DE?>>> watchBoilers();

  Stream<Either<SonoffS20Failure, KtList<SonoffS20DE?>>> watchUncompleted();

  Future<Either<SonoffS20Failure, Unit>> create(SonoffS20DE SonoffS20);

  /// Update document in the database in the following fields
  Future<Either<SonoffS20Failure, Unit>> updateDatabase({
    required String pathOfField,
    required Map<String, dynamic> fieldsToUpdate,
    String forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> updateWithSonoffS20({
    required SonoffS20DE SonoffS20,
    String? forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> turnOnSonoffS20s({
    required List<String>? SonoffS20sId,
    String forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> turnOffSonoffS20s({
    required List<String>? SonoffS20sId,
    String forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> moveUpBlinds({
    required List<String>? SonoffS20sId,
    String forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> stopBlinds({
    required List<String>? SonoffS20sId,
    String forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> moveDownBlinds({
    required List<String>? SonoffS20sId,
    String forceUpdateLocation,
  });

  Future<Either<SonoffS20Failure, Unit>> delete(SonoffS20DE SonoffS20);
}
