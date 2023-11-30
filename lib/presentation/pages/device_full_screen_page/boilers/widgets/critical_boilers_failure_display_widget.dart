import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class CriticalBoilersFailureDisplay extends StatelessWidget {
  const CriticalBoilersFailureDisplay({
    required this.failure,
    super.key,
  });

  final DevicesFailure? failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const TextAtom(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          const TextAtom(
            'Unexpected error. \nPlease, contact support',
            // failure.maybeMap(
            //   insufficientPermission: (_) => 'Insufficient permissions',
            //   orElse: () => 'Unexpected error. \nPlease, contact support.',
            // ),
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                TextAtom('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
