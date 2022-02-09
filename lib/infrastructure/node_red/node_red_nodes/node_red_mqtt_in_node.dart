import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_visual_node_abstract.dart';

class NodeRedMqttInNode extends NodeRedVisualNodeAbstract {
  NodeRedMqttInNode({
    required this.brokerId,
    required this.topic,
    String? name,
    List<List<String>>? wires,
    this.qos,
    this.datatype,
  }) : super(
          type: 'mqtt in',
          name: name,
          wires: wires,
        );

  /// Mqtt broker node ide
  String brokerId;
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
    "broker": "$brokerId",
    "wires":  ${fixWiresForNodeRed()}
  }''';
  }
}
