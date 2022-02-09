import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_function_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_mqtt_broker_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_mqtt_in_node.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_mqtt_out_node.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class NodeRedConverter {
  static const String hubBaseTopic = 'CBJ_Hub_Topic';

  static const String devicesTopicTypeName = 'Devices';
  static const String scenesTopicTypeName = 'Scenes';

  static SceneCbj convertToSceneNodes({
    required String nodeName,
    required List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        devicesPropertyAction,
  }) {
    final NodeRedMqttBrokerNode brokerNode =
        NodeRedMqttBrokerNode(name: 'CyBear  Jinni Broker');

    final List<String> allNodeRedIdToConnectSceneTo = [];
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
        brokerNode: brokerNode,
        device: device,
        property: property,
        action: action,
      );

      if (nodes.isNotEmpty) {
        nodes += ', ';
      }
      nodes += nodeRedStringNode.value;
      allNodeRedIdToConnectSceneTo.add(nodeRedStringNode.key);
    }

    final MapEntry<String, String> startingSceneNode = createStartingSceneNode(
      nodeName: nodeName,
      broker: brokerNode,
      wires: allNodeRedIdToConnectSceneTo,
    );

    nodes = '[${startingSceneNode.value}, $nodes, ${brokerNode.toString()}]';

    return SceneCbj(
      name: nodeName,
      uniqueId: UniqueId(),
      backgroundColor: Colors.orange.value,
      automationString: nodes,
      firstNodeId: startingSceneNode.key,
    );
  }

  /// Returns the string id of the function to connect to and the whole function
  /// plus mqtt out string as node-red structure
  static MapEntry<String, String> convertToNodeString({
    required DeviceEntityAbstract device,
    required String property,
    required String action,
    required NodeRedMqttBrokerNode brokerNode,
  }) {
    final String topic =
        '$hubBaseTopic/$devicesTopicTypeName/${device.uniqueId.getOrCrash()}/$property';
    final NodeRedMqttOutNode mqttNode = NodeRedMqttOutNode(
      brokerId: brokerNode.id!,
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
    required NodeRedMqttBrokerNode broker,
    required List<String> wires,
  }) {
    final String mqttInNodeId = const Uuid().v1();
    final String topic = '$hubBaseTopic/$scenesTopicTypeName/$mqttInNodeId';
    final NodeRedMqttInNode nodeRedMqttInNode = NodeRedMqttInNode(
      name: nodeName,
      brokerId: broker.id!,
      topic: topic,
      wires: [wires],
    );
    return MapEntry(nodeRedMqttInNode.id!, nodeRedMqttInNode.toString());
  }
}
