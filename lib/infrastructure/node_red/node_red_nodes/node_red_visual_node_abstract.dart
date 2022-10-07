import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_node_abstract.dart';

/// Abstract calss for all the nodes that can be connected on the dashboard

class NodeRedVisualNodeAbstract extends NodeRedNodeAbstract {
  NodeRedVisualNodeAbstract({
    required super.type,
    super.id,
    super.name,
    this.wires,
  });

  // Does not exists in all nodes, maybe we will move it to another abstract class
  List<List<String>>? wires = [];

  List<List<String>> fixWiresForNodeRed() {
    final List<List<String>> wiresTemp = [];

    // '"${mqttNode.id}"'
    if (wires != null) {
      for (final List<String> tempWire in wires!) {
        final List<String> fixedWireList = [];
        for (final String tempId in tempWire) {
          if (!tempId.contains('"')) {
            fixedWireList.add('"$tempId"');
          } else {
            fixedWireList.add(tempId);
          }
        }
        wiresTemp.add(fixedWireList);
      }
    }
    return wiresTemp;
  }
}
