import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Action row.
/// Contains device name and action name and sores more data like device id
class SceneActionWidget extends StatelessWidget {
  /// Get all and store all info about the action
  SceneActionWidget({
    required this.deviceName,
    required this.actionName,
    required this.deviceId,
  });

  /// Cbj unique id of a device
  final String deviceId;

  /// The name of the device as got set by the user
  final String deviceName;

  /// The action to preform on the device
  final String actionName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const FaIcon(
        FontAwesomeIcons.lightbulb,
        color: Colors.yellow,
      ),
      title: Text(deviceName),
      subtitle: Text(actionName),
    );
  }
}
