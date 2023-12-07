import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
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
      color: Theme.of(context).colorScheme.error,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            TextAtom(
              'Invalid device, please, contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            TextAtom(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
            TextAtom(
              device!.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
