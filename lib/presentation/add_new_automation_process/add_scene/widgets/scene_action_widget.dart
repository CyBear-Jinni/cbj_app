import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Action row.
/// Contains device name and action name and sores more data like device id
class SceneActionWidget extends StatelessWidget {
  /// Get all and store all info about the action
  const SceneActionWidget({
    required this.deviceEntityAbstract,
    required this.propertyToChange,
    required this.actionToChange,
  });

  /// Cbj unique id of a device
  final DeviceEntityAbstract deviceEntityAbstract;

  /// The action for the device
  final String propertyToChange;

  /// The action for the device
  final String actionToChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.3),
      child: ListTile(
        leading: const FaIcon(
          FontAwesomeIcons.lightbulb,
          color: Colors.yellow,
        ),
        title: AutoSizeText(
          '${deviceEntityAbstract.defaultName.getOrCrash()!} - $propertyToChange',
          maxLines: 2,
        ),
        trailing: AutoSizeText(
          actionToChange,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
