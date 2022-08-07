import 'dart:collection';

import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/routine/routine_cbj_entity.dart';
import 'package:cybear_jinni/domain/routine/routine_cbj_failures.dart';
import 'package:cybear_jinni/domain/routine/value_objects_routine_cbj.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

abstract class IRoutineCbjRepository {
  Future<Either<RoutineCbjFailure, KtList<RoutineCbjEntity>>>
      getAllRoutinesAsList();

  Future<Either<RoutineCbjFailure, HashMap<String, RoutineCbjEntity>>>
      getAllRoutinesAsMap();

  Stream<Either<RoutineCbjFailure, KtList<RoutineCbjEntity>>>
      watchAllRoutines();

  /// Sending the new routine to the hub to get added
  Future<Either<RoutineCbjFailure, RoutineCbjEntity>>
      addOrUpdateNewRoutineInHub(
    RoutineCbjEntity routineCbjEntity,
  );

  /// Activate action of all routine list
  Future<Either<RoutineCbjFailure, Unit>> activateRoutines(
    KtList<RoutineCbjEntity> routinesList,
  );

  Future<Either<RoutineCbjFailure, RoutineCbjEntity>> getRoutine();

  /// Sending the new routine to the hub to get added
  Future<Either<RoutineCbjFailure, RoutineCbjEntity>>
      addOrUpdateNewRoutineInHubFromDevicesPropertyActionList(
    String routineName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
    RoutineCbjRepeatDateDays daysToRepeat,
    RoutineCbjRepeatDateHour hourToRepeat,
    RoutineCbjRepeatDateMinute minutesToRepeat,
  );

  /// Sending the new routine from the hub to the app routine list
  void addOrUpdateNewRoutineInApp(
    RoutineCbjEntity routineCbj,
  );

  Future<void> initiateHubConnection();

  BehaviorSubject<KtList<RoutineCbjEntity>>
      routinesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<RoutineCbjEntity>>();
}
