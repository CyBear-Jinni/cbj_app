import 'dart:collection';
import 'dart:convert';

import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:cybear_jinni/domain/scene/value_objects_scene_cbj.dart';
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
import 'package:rxdart/subjects.dart';

@LazySingleton(as: ISceneCbjRepository)
class SceneCbjRepository implements ISceneCbjRepository {
  HashMap<String, SceneCbjEntity> allScenes = HashMap<String, SceneCbjEntity>();

  Future<Either<SceneCbjFailure, SceneCbjEntity>> getScene() async {
    //
    // final SceneCbj scene = SceneCbj(
    //   uniqueId: UniqueId(),
    //   name: 'Turn on all lights out side',
    //   scenesActionsToExecute: [
    //     'Turn on all lights',
    //     ' Turn on all lights',
    //   ].toImmutableList(),
    // );
    //
    //
    // final KtList<String> scenesActionsList = [
    //   'Gut Calling',
    //   'Out Side North',
    // ].toImmutableList();

    try {
      return right(
        SceneCbjEntity(
          uniqueId: UniqueId(),
          name: SceneCbjName('Go to sleep ----------- 😴'),
          backgroundColor:
              SceneCbjBackgroundColor(Colors.blue.value.toString()),
          iconCodePoint: SceneCbjIconCodePoint(
            FontAwesomeIcons.school.codePoint.toString(),
          ),
          image: SceneCbjBackgroundImage(null),
          automationString: SceneCbjAutomationString(null),
          nodeRedFlowId: SceneCbjNodeRedFlowId(null),
          firstNodeId: SceneCbjFirstNodeId(null),
          lastDateOfExecute: SceneCbjLastDateOfExecute(null),
          entityStateGRPC: SceneCbjDeviceStateGRPC(null),
          senderDeviceModel: SceneCbjSenderDeviceModel(null),
          senderDeviceOs: SceneCbjSenderDeviceOs(null),
          senderId: SceneCbjSenderId(null),
          compUuid: SceneCbjCompUuid(null),
          stateMassage: SceneCbjStateMassage(null),
        ),
      );
    } catch (e) {
      return left(const SceneCbjFailure.unexpected());
    }
  }

  @override
  Future<Either<SceneCbjFailure, SceneCbjEntity>> addOrUpdateNewSceneInHub(
    SceneCbjEntity sceneCbjEntity,
  ) async {
    allScenes[sceneCbjEntity.uniqueId.getOrCrash()] = sceneCbjEntity;

    final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
      allRemoteCommands: jsonEncode(sceneCbjEntity.toInfrastructure().toJson()),
      sendingType: SendingType.sceneType,
    );
    AppRequestsToHub.appRequestsToHubStreamController.add(clientStatusRequests);

    return right(sceneCbjEntity);
  }

  @override
  Future<Either<SceneCbjFailure, SceneCbjEntity>>
      addOrUpdateNewSceneInHubFromDevicesPropertyActionList(
    String sceneName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) async {
    final SceneCbjEntity newCbjScene = NodeRedConverter.convertToSceneNodes(
      nodeName: sceneName,
      devicesPropertyAction: smartDevicesWithActionToAdd,
    );
    return addOrUpdateNewSceneInHub(newCbjScene);
  }

  @override
  Future<Either<SceneCbjFailure, KtList<SceneCbjEntity>>>
      getAllScenesAsList() async {
    try {
      return right(allScenes.values.toImmutableList());
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all scenes list');
        return left(const SceneCbjFailure.unexpected());
      } else {
        logger.e('Unexpected error while getting all scenes list');
        // log.error(e.toString());
        return left(const SceneCbjFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SceneCbjFailure, HashMap<String, SceneCbjEntity>>>
      getAllScenesAsMap() async {
    try {
      return right(allScenes);
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all scenes map');
        return left(const SceneCbjFailure.unexpected());
      } else {
        logger.e('Unexpected error while getting all scenes map');
        // log.error(e.toString());
        return left(const SceneCbjFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SceneCbjFailure, Unit>> activateScenes(
    KtList<SceneCbjEntity> scenesList,
  ) async {
    for (final SceneCbjEntity sceneCbjEntity in scenesList.asList()) {
      addOrUpdateNewSceneInHub(
        sceneCbjEntity.copyWith(
          entityStateGRPC: SceneCbjDeviceStateGRPC(
            EntityStateGRPC.waitingInCloud.toString(),
          ),
        ),
      );
    }
    return right(unit);
  }

  @override
  void addOrUpdateNewSceneInApp(SceneCbjEntity sceneCbj) {
    allScenes[sceneCbj.uniqueId.getOrCrash()] = sceneCbj;

    scenesResponseFromTheHubStreamController.sink
        .add(allScenes.values.toImmutableList());
  }

  @override
  Future<void> initiateHubConnection() async {}

  @override
  Stream<Either<SceneCbjFailure, KtList<SceneCbjEntity>>>
      watchAllScenes() async* {
    yield* scenesResponseFromTheHubStreamController.stream
        .map((event) => right(event));
  }

  @override
  BehaviorSubject<KtList<SceneCbjEntity>>
      scenesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<SceneCbjEntity>>();
}
