import 'package:cybear_jinni/domain/binding/binding_cbj_entity.dart';
import 'package:cybear_jinni/domain/binding/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/routine/routine_cbj_entity.dart';
import 'package:cybear_jinni/domain/routine/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/domain/scene/value_objects_scene_cbj.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_function_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_inject_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_mqtt_broker_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_mqtt_in_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_mqtt_out_node.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class NodeRedConverter {
  static const String hubBaseTopic = 'CBJ_Hub_Topic';

  static const String devicesTopicTypeName = 'Devices';
  static const String scenesTopicTypeName = 'Scenes';
  static const String routinesTopicTypeName = 'Routines';
  static const String bindingsTopicTypeName = 'bindings';

  static SceneCbjEntity convertToSceneNodes({
    required String nodeName,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        devicesPropertyAction,
  }) {
    final NodeRedMqttBrokerNode brokerNode =
        NodeRedMqttBrokerNode(name: 'CyBear  Jinni Broker');

    final MapEntry<String, List<String>>
        allNodesAsWellAsAllNodeRedIdToConnectTo =
        getAllNodesAsWellAsAllNodeRedIdToConnectTo(
      devicesPropertyAction: devicesPropertyAction,
      brokerNodeId: brokerNode.id!,
    );

    String nodes = allNodesAsWellAsAllNodeRedIdToConnectTo.key;
    final List<String> allNodeRedIdToConnectTo =
        allNodesAsWellAsAllNodeRedIdToConnectTo.value;

    final MapEntry<String, String> startingSceneNode = createStartingSceneNode(
      nodeName: nodeName,
      brokerNodeId: brokerNode.id!,
      wires: allNodeRedIdToConnectTo,
    );

    if (nodes.isEmpty) {
      nodes = '[${startingSceneNode.value}, ${brokerNode.toString()}]';
    } else {
      nodes = '[${startingSceneNode.value}, $nodes, ${brokerNode.toString()}]';
    }
    return SceneCbjEntity(
      uniqueId: UniqueId(),
      name: SceneCbjName(nodeName),
      backgroundColor: SceneCbjBackgroundColor(Colors.orange.value.toString()),
      automationString: SceneCbjAutomationString(nodes),
      nodeRedFlowId: SceneCbjNodeRedFlowId(null),
      firstNodeId: SceneCbjFirstNodeId(startingSceneNode.key),
      iconCodePoint: SceneCbjIconCodePoint(null),
      image: SceneCbjBackgroundImage(null),
      lastDateOfExecute: SceneCbjLastDateOfExecute(null),
      deviceStateGRPC: SceneCbjDeviceStateGRPC(
        DeviceStateGRPC.addingNewScene.toString(),
      ),
      senderDeviceModel: SceneCbjSenderDeviceModel(null),
      senderDeviceOs: SceneCbjSenderDeviceOs(null),
      senderId: SceneCbjSenderId(null),
      compUuid: SceneCbjCompUuid(null),
      stateMassage: SceneCbjStateMassage(null),
    );
  }

  static RoutineCbjEntity convertToRoutineNodes({
    required String nodeName,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        devicesPropertyAction,
    required RoutineCbjRepeatDateDays daysToRepeat,
    required RoutineCbjRepeatDateHour hourToRepeat,
    required RoutineCbjRepeatDateMinute minutesToRepeat,
  }) {
    final NodeRedMqttBrokerNode brokerNode =
        NodeRedMqttBrokerNode(name: 'CyBear  Jinni Broker');

    final MapEntry<String, List<String>>
        allNodesAsWellAsAllNodeRedIdToConnectTo =
        getAllNodesAsWellAsAllNodeRedIdToConnectTo(
      devicesPropertyAction: devicesPropertyAction,
      brokerNodeId: brokerNode.id!,
    );

    String nodes = allNodesAsWellAsAllNodeRedIdToConnectTo.key;
    final List<String> allNodeRedIdToConnectTo =
        allNodesAsWellAsAllNodeRedIdToConnectTo.value;

    final MapEntry<String, String> startingRoutineNode =
        createStartingRoutineNode(
      nodeName: nodeName,
      wires: allNodeRedIdToConnectTo,
      daysToRepeat: daysToRepeat,
      hourToRepeat: hourToRepeat,
      minutesToRepeat: minutesToRepeat,
    );

    nodes = '[${startingRoutineNode.value}, $nodes, ${brokerNode.toString()}]';

    return RoutineCbjEntity(
      uniqueId: UniqueId(),
      name: RoutineCbjName(nodeName),
      backgroundColor:
          RoutineCbjBackgroundColor(Colors.orange.value.toString()),
      automationString: RoutineCbjAutomationString(nodes),
      nodeRedFlowId: RoutineCbjNodeRedFlowId(null),
      firstNodeId: RoutineCbjFirstNodeId(startingRoutineNode.key),
      iconCodePoint: RoutineCbjIconCodePoint(null),
      image: RoutineCbjBackgroundImage(null),
      lastDateOfExecute: RoutineCbjLastDateOfExecute(null),
      deviceStateGRPC: RoutineCbjDeviceStateGRPC(
        DeviceStateGRPC.addingNewRoutine.toString(),
      ),
      senderDeviceModel: RoutineCbjSenderDeviceModel(null),
      senderDeviceOs: RoutineCbjSenderDeviceOs(null),
      senderId: RoutineCbjSenderId(null),
      compUuid: RoutineCbjCompUuid(null),
      stateMassage: RoutineCbjStateMassage(null),
      repeateType:
          RoutineCbjRepeatType(WhenToExecute.betweenSelectedTime.toString()),
      repeateDateDays: RoutineCbjRepeatDateDays(daysToRepeat.getOrCrash()),
      repeateDateHour: RoutineCbjRepeatDateHour(hourToRepeat.getOrCrash()),
      repeateDateMinute:
          RoutineCbjRepeatDateMinute(minutesToRepeat.getOrCrash()),
    );
  }

  static BindingCbjEntity convertToBindingNodes({
    required String nodeName,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        devicesPropertyAction,
  }) {
    final NodeRedMqttBrokerNode brokerNode =
        NodeRedMqttBrokerNode(name: 'CyBear  Jinni Broker');

    final MapEntry<String, List<String>>
        allNodesAsWellAsAllNodeRedIdToConnectTo =
        getAllNodesAsWellAsAllNodeRedIdToConnectTo(
      devicesPropertyAction: devicesPropertyAction,
      brokerNodeId: brokerNode.id!,
    );

    String nodes = allNodesAsWellAsAllNodeRedIdToConnectTo.key;
    final List<String> allNodeRedIdToConnectTo =
        allNodesAsWellAsAllNodeRedIdToConnectTo.value;

    final MapEntry<String, String> startingBindingNode =
        createStartingBindingNode(
      nodeName: nodeName,
      brokerNodeId: brokerNode.id!,
      wires: allNodeRedIdToConnectTo,
    );

    nodes = '[${startingBindingNode.value}, $nodes, ${brokerNode.toString()}]';

    return BindingCbjEntity(
      uniqueId: UniqueId(),
      name: BindingCbjName(nodeName),
      backgroundColor:
          BindingCbjBackgroundColor(Colors.orange.value.toString()),
      automationString: BindingCbjAutomationString(nodes),
      nodeRedFlowId: BindingCbjNodeRedFlowId(null),
      firstNodeId: BindingCbjFirstNodeId(startingBindingNode.key),
      iconCodePoint: BindingCbjIconCodePoint(null),
      image: BindingCbjBackgroundImage(null),
      lastDateOfExecute: BindingCbjLastDateOfExecute(null),
      deviceStateGRPC: BindingCbjDeviceStateGRPC(
        DeviceStateGRPC.addingNewBinding.toString(),
      ),
      senderDeviceModel: BindingCbjSenderDeviceModel(null),
      senderDeviceOs: BindingCbjSenderDeviceOs(null),
      senderId: BindingCbjSenderId(null),
      compUuid: BindingCbjCompUuid(null),
      stateMassage: BindingCbjStateMassage(null),
    );
  }

  /// Returns the string id of the function to connect to and the whole function
  /// plus mqtt out string as node-red structure
  static MapEntry<String, String> convertToNodeString({
    required DeviceEntityAbstract device,
    required String property,
    required String action,
    required String brokerNodeId,
  }) {
    final String topic =
        '$hubBaseTopic/$devicesTopicTypeName/${device.uniqueId.getOrCrash()}/$property';
    final NodeRedMqttOutNode mqttNode = NodeRedMqttOutNode(
      brokerNodeId: brokerNodeId,
      topic: topic,
      name: '${device.defaultName.getOrCrash()} - $property',
    );

    final NodeRedFunctionNode functionForNode =
        NodeRedFunctionNode.passOnlyNewAction(
      action: action,
      name: action,
      wires: [
        [
          mqttNode.id!,
        ]
      ],
    );

    return MapEntry(
      functionForNode.id!,
      '${functionForNode.toString()}, ${mqttNode.toString()}',
    );
  }

  static MapEntry<String, String> createStartingSceneNode({
    required String nodeName,
    required String brokerNodeId,
    required List<String> wires,
  }) {
    final String mqttInNodeId = const Uuid().v1();
    final String topic = '$hubBaseTopic/$scenesTopicTypeName/$mqttInNodeId';
    final NodeRedMqttInNode nodeRedMqttInNode = NodeRedMqttInNode(
      name: nodeName,
      brokerNodeId: brokerNodeId,
      topic: topic,
      wires: [wires],
      id: mqttInNodeId,
    );
    return MapEntry(nodeRedMqttInNode.id!, nodeRedMqttInNode.toString());
  }

  static MapEntry<String, String> createStartingRoutineNode({
    required String nodeName,
    required List<String> wires,
    required RoutineCbjRepeatDateDays daysToRepeat,
    required RoutineCbjRepeatDateHour hourToRepeat,
    required RoutineCbjRepeatDateMinute minutesToRepeat,
  }) {
    final String injectNodeId = const Uuid().v1();
    final NodeRedInjectAtASpecificTimeNode nodeRedInjectNode =
        NodeRedInjectAtASpecificTimeNode(
      name: nodeName,
      wires: [wires],
      id: injectNodeId,
      daysToRepeat: daysToRepeat,
      hourToRepeat: hourToRepeat,
      minutesToRepeat: minutesToRepeat,
    );
    return MapEntry(nodeRedInjectNode.id!, nodeRedInjectNode.toString());
  }

  static MapEntry<String, String> createStartingBindingNode({
    required String nodeName,
    required String brokerNodeId,
    required List<String> wires,
  }) {
    final String mqttInNodeId = const Uuid().v1();
    final String topic = '$hubBaseTopic/$bindingsTopicTypeName/$mqttInNodeId';
    final NodeRedMqttInNode nodeRedMqttInNode = NodeRedMqttInNode(
      name: nodeName,
      brokerNodeId: brokerNodeId,
      topic: topic,
      wires: [wires],
      id: mqttInNodeId,
    );
    return MapEntry(nodeRedMqttInNode.id!, nodeRedMqttInNode.toString());
  }

  static MapEntry<String, List<String>>
      getAllNodesAsWellAsAllNodeRedIdToConnectTo({
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        devicesPropertyAction,
    required String brokerNodeId,
  }) {
    final List<String> allNodeRedIdToConnectTo = [];
    String nodes = '';

    for (final MapEntry<DeviceEntityAbstract,
        MapEntry<String?, String?>> deviceEntry in devicesPropertyAction) {
      final DeviceEntityAbstract device = deviceEntry.key;
      final String? property = deviceEntry.value.key;
      final String? action = deviceEntry.value.value;

      if (property == null || action == null) {
        continue;
      }
      final MapEntry<String, String> nodeRedStringNode = convertToNodeString(
        brokerNodeId: brokerNodeId,
        device: device,
        property: property,
        action: action,
      );

      if (nodes.isNotEmpty) {
        nodes += ', ';
      }
      nodes += nodeRedStringNode.value;
      allNodeRedIdToConnectTo.add(nodeRedStringNode.key);
    }
    return MapEntry(nodes, allNodeRedIdToConnectTo);
  }
}
