import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/scene/i_scene_repository.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: ISceneRepository)
class SceneRepository implements ISceneRepository {
  @override
  Future<Either<SceneFailure, Scene>> getScene() async {
    //
    // final Scene scene = Scene(
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
        Scene(
          uniqueId: UniqueId(),
          name: 'Go to sleep ----------- 😴',
          scenesActionsToExecute: scenesActionsList,
          backgroundColor: Colors.blue,
          icon: FontAwesomeIcons.school,
        ),
      );
    } catch (e) {
      return left(const SceneFailure.unexpected());
    }
  }

  @override
  Future<Either<SceneFailure, Scene>> addNewScene(
    String sceneName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) async {
    String nodeRedInstructions = NodeRedConverter.convertToSceneNodes(
      nodeName: sceneName,
      devicesPropertyAction: smartDevicesWithActionToAdd,
    );

    if (nodeRedInstructions == '[]') {
      return left(const SceneFailure.unexpected());
    }

    nodeRedInstructions =
        '{"automationType": "scene", "automationAction": "addNew", '
        '"automationName": "$sceneName"}\n'
        '$nodeRedInstructions';
    final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
      allRemoteCommands: nodeRedInstructions,
      sendingType: SendingType.sceneType,
    );
    AppRequestsToHub.appRequestsToHubStreamController.sink
        .add(clientStatusRequests);

    return right(
      Scene(
        name: 'Test',
        scenesActionsToExecute: ['Test'].toImmutableList(),
        uniqueId: UniqueId(),
        backgroundColor: const Color(0x0000007b),
      ),
    );
  }
}
