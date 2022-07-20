import 'dart:collection';
import 'dart:convert';

import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/routine/i_routine_cbj_repository.dart';
import 'package:cybear_jinni/domain/routine/routine_cbj_entity.dart';
import 'package:cybear_jinni/domain/routine/routine_cbj_failures.dart';
import 'package:cybear_jinni/domain/routine/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_converter.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/src/subjects/behavior_subject.dart';

@LazySingleton(as: IRoutineCbjRepository)
class RoutineCbjRepository implements IRoutineCbjRepository {
  HashMap<String, RoutineCbjEntity> allRoutines =
      HashMap<String, RoutineCbjEntity>();

  @override
  Future<Either<RoutineCbjFailure, RoutineCbjEntity>> getRoutine() async {
    //
    // final RoutineCbj routine = RoutineCbj(
    //   uniqueId: UniqueId(),
    //   name: 'Turn on all lights out side',
    //   routinesActionsToExecute: [
    //     'Turn on all lights',
    //     ' Turn on all lights',
    //   ].toImmutableList(),
    // );
    //
    //
    // final KtList<String> routinesActionsList = [
    //   'Gut Calling',
    //   'Out Side North',
    // ].toImmutableList();

    try {
      return right(
        RoutineCbjEntity(
          uniqueId: UniqueId(),
          name: RoutineCbjName('Go to sleep ----------- 😴'),
          backgroundColor:
              RoutineCbjBackgroundColor(Colors.blue.value.toString()),
          iconCodePoint: RoutineCbjIconCodePoint(
            FontAwesomeIcons.school.codePoint.toString(),
          ),
          image: RoutineCbjBackgroundImage(null),
          automationString: RoutineCbjAutomationString(null),
          firstNodeId: RoutineCbjFirstNodeId(null),
          lastDateOfExecute: RoutineCbjLastDateOfExecute(null),
          deviceStateGRPC: RoutineCbjDeviceStateGRPC(null),
          senderDeviceModel: RoutineCbjSenderDeviceModel(null),
          senderDeviceOs: RoutineCbjSenderDeviceOs(null),
          senderId: RoutineCbjSenderId(null),
          compUuid: RoutineCbjCompUuid(null),
          stateMassage: RoutineCbjStateMassage(null),
        ),
      );
    } catch (e) {
      return left(const RoutineCbjFailure.unexpected());
    }
  }

  @override
  Future<Either<RoutineCbjFailure, RoutineCbjEntity>>
      addOrUpdateNewRoutineInHub(
    RoutineCbjEntity routineCbjEntity,
  ) async {
    allRoutines[routineCbjEntity.uniqueId.getOrCrash()] = routineCbjEntity;

    final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
      allRemoteCommands:
          jsonEncode(routineCbjEntity.toInfrastructure().toJson()),
      sendingType: SendingType.routineType,
    );
    AppRequestsToHub.appRequestsToHubStreamController.add(clientStatusRequests);

    return right(routineCbjEntity);
  }

  @override
  Future<Either<RoutineCbjFailure, RoutineCbjEntity>>
      addOrUpdateNewRoutineInHubFromDevicesPropertyActionList(
    String routineName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) async {
    final RoutineCbjEntity newCbjRoutine =
        NodeRedConverter.convertToRoutineNodes(
      nodeName: routineName,
      devicesPropertyAction: smartDevicesWithActionToAdd,
    );
    return addOrUpdateNewRoutineInHub(newCbjRoutine);
  }

  @override
  Future<Either<RoutineCbjFailure, KtList<RoutineCbjEntity>>>
      getAllRoutinesAsList() async {
    try {
      return right(allRoutines.values.toImmutableList());
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all routines list');
        return left(const RoutineCbjFailure.unexpected());
      } else {
        logger.e('Unexpected error while getting all routines list');
        // log.error(e.toString());
        return left(const RoutineCbjFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoutineCbjFailure, HashMap<String, RoutineCbjEntity>>>
      getAllRoutinesAsMap() async {
    try {
      return right(allRoutines);
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all routines map');
        return left(const RoutineCbjFailure.unexpected());
      } else {
        logger.e('Unexpected error while getting all routines map');
        // log.error(e.toString());
        return left(const RoutineCbjFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoutineCbjFailure, Unit>> activateRoutines(
    KtList<RoutineCbjEntity> routinesList,
  ) async {
    for (final RoutineCbjEntity routineCbjEntity in routinesList.asList()) {
      addOrUpdateNewRoutineInHub(
        routineCbjEntity.copyWith(
          deviceStateGRPC: RoutineCbjDeviceStateGRPC(
            DeviceStateGRPC.waitingInFirebase.toString(),
          ),
        ),
      );
    }
    return right(unit);
  }

  @override
  void addOrUpdateNewRoutineInApp(RoutineCbjEntity routineCbj) {
    allRoutines[routineCbj.uniqueId.getOrCrash()] = routineCbj;

    routinesResponseFromTheHubStreamController.sink
        .add(allRoutines.values.toImmutableList());
  }

  @override
  Future<void> initiateHubConnection() async {}

  @override
  Stream<Either<RoutineCbjFailure, KtList<RoutineCbjEntity>>>
      watchAllRoutines() async* {
    yield* routinesResponseFromTheHubStreamController.stream
        .map((event) => right(event));
  }

  @override
  BehaviorSubject<KtList<RoutineCbjEntity>>
      routinesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<RoutineCbjEntity>>();
}
