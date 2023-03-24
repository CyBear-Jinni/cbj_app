import 'package:cybear_jinni/domain/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:flutter/material.dart';

class ErrorSmartPlugsDeviceCard extends StatelessWidget {
  const ErrorSmartPlugsDeviceCard({
    required this.device,
    super.key,
  });

  final GenericSmartPlugDE? device;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid device, please, contact support',
              style: (Theme.of(context).primaryTextTheme.bodyText2)!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              device!.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
