import 'package:cybear_jinni/infrastructure/node_red/node_red_nodes/node_red_visual_node_abstract.dart';

/// Class for Node-Red function node
/// https://nodered.org/docs/user-guide/writing-functions
class NodeRedFunctionNode extends NodeRedVisualNodeAbstract {
  NodeRedFunctionNode({
    required this.funcString,
    List<List<String>>? wires,
    String? name,
  }) : super(
          type: 'function',
          wires: wires,
          name: name,
        );

  /// Take action and pass it down as property for the next node
  factory NodeRedFunctionNode.passOnlyNewAction({
    required String action,
    List<List<String>>? wires,
    String? name,
  }) {
    final String function = '''msg.payload=\\"$action\\"; return msg;''';
    return NodeRedFunctionNode(funcString: function, wires: wires, name: name);
  }

  String funcString;

  @override
  String toString() {
    return '''
    {
    "id": "$id",
    "type": "$type",
    "name": "$name",
    "func": "$funcString",
    "outputs": 1,
    "noerr": 0,
    "initialize": "",
    "finalize": "",
    "wires":  ${fixWiresForNodeRed()}
  }''';
  }
}
