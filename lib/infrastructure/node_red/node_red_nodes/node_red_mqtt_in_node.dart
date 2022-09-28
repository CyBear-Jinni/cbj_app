import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_visual_node_abstract.dart';

class NodeRedMqttInNode extends NodeRedVisualNodeAbstract {
  NodeRedMqttInNode({
    required this.brokerNodeId,
    required this.topic,
    String? id,
    String? name,
    List<List<String>>? wires,
    this.qos,
    this.datatype,
  }) : super(
          id: id,
          type: 'mqtt in',
          name: name,
          wires: wires,
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
