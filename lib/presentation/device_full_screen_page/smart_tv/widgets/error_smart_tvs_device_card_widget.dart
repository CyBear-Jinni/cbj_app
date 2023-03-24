import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:flutter/material.dart';

class ErrorSmartTvsDeviceCard extends StatelessWidget {
  const ErrorSmartTvsDeviceCard({
    required this.device,
    super.key,
  });

  final GenericSmartTvDE? device;

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
