import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_visual_node_abstract.dart';

class NodeRedMqttInNode extends NodeRedVisualNodeAbstract {
  NodeRedMqttInNode({
    required this.brokerNodeId,
    required this.topic,
    super.id,
    super.name,
    super.wires,
    this.qos,
    this.datatype,
  }) : super(
          type: 'mqtt in',
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
    "datatype": "$datatype",
    "broker": "$brokerNodeId",
    "wires":  ${fixWiresForNodeRed()}
  }''';
  }
}
