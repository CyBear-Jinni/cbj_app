import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_visual_node_abstract.dart';

class NodeRedMqttOutNode extends NodeRedVisualNodeAbstract {
  NodeRedMqttOutNode({
    required this.brokerNodeId,
    required this.topic,
    this.qos,
    this.datatype,
    super.name,
  }) : super(
          type: 'mqtt out',
        );

  /// Mqtt broker node id
  String brokerNodeId;
  String topic;
  String? qos = '2';
  String? datatype = 'auto';

  @override
  String toString() {
    return '''
    {
    "id": "$id",
    "type": "$type",
    "name": "$name",
    "topic": "$topic",
    "qos": "$qos",
    "retain": "",
    "broker": "$brokerNodeId",
    "wires": ${fixWiresForNodeRed()}
  }''';
  }
}
