import 'dart:convert';

import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: ISceneCbjRepository)
class SceneCbjRepository implements ISceneCbjRepository {
  @override
  Future<Either<SceneCbjFailure, SceneCbj>> getScene() async {
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
    final KtList<String> scenesActionsList = [
      'Gut Calling',
      'Out Side North',
    ].toImmutableList();

    try {
      return right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Go to sleep ----------- 😴',
          backgroundColor: Colors.blue.value,
          iconCodePoint: FontAwesomeIcons.school.codePoint,
        ),
      );
    } catch (e) {
      return left(const SceneCbjFailure.unexpected());
    }
  }

  @override
  Future<Either<SceneCbjFailure, SceneCbj>> addNewScene(
    String sceneName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) async {
    final SceneCbj newCbjScene = NodeRedConverter.convertToSceneNodes(
      nodeName: sceneName,
      devicesPropertyAction: smartDevicesWithActionToAdd,
    );

    final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
      allRemoteCommands: jsonEncode(newCbjScene.toInfrastructure().toJson()),
      sendingType: SendingType.sceneType,
    );
    AppRequestsToHub.appRequestsToHubStreamController.sink
        .add(clientStatusRequests);

    return right(
      SceneCbj(
        name: 'Test',
        uniqueId: UniqueId(),
        backgroundColor: const Color(0x0000007b).value,
      ),
    );
  }
}
