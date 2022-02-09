import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_node_abstract.dart';

class NodeRedMqttBrokerNode extends NodeRedNodeAbstract {
  NodeRedMqttBrokerNode({
    this.brokerAddress = '127.0.0.1',
    this.port = '1883',
    this.qos,
    this.datatype,
  }) : super(
          type: 'mqtt-broker',
        );

  /// Mqtt broker node ide
  String brokerAddress;
  String port;
  String? clientid = '';
  String? qos = '2';
  String? datatype = 'auto';

  @override
  String toString() {
    return '''
    {
    "id": "$id",
    "type": "$type",
    "name": "$name",
    "broker": "$brokerAddress",
    "port": "$port",
    "clientid": "",
    "usetls": false,
    "compatmode": false,
    "keepalive": "60",
    "cleansession": true,
    "birthTopic": "",
    "birthQos": "0",
    "birthPayload": "",
    "closeTopic": "",
    "closeQos": "0",
    "closePayload": "",
    "willTopic": "",
    "willQos": "0",
    "willPayload": ""
  }''';
  }
}
