import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Action row.
/// Contains device name and action name and sores more data like device id
class RoutineActionWidget extends StatelessWidget {
  /// Get all and store all info about the action
  const RoutineActionWidget({
    required this.entity,
    required this.propertyToChange,
    required this.actionToChange,
  });

  /// Cbj unique id of a device
  final DeviceEntityBase entity;

  /// The action for the device
  final EntityProperties propertyToChange;

  /// The action for the device
  final EntityActions actionToChange;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.blue.withOpacity(0.3),
      child: ListTile(
        leading: const FaIcon(
          FontAwesomeIcons.lightbulb,
          color: Colors.yellow,
        ),
        title: AutoSizeText(
          '${entity.cbjEntityName.getOrCrash()!} - ${propertyToChange.name}',
          maxLines: 2,
        ),
        trailing: AutoSizeText(
          actionToChange.name,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
