import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:flutter/material.dart';

class CriticalBoilersFailureDisplay extends StatelessWidget {
  const CriticalBoilersFailureDisplay({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final DevicesFailure? failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          const Text(
            'Unexpected error. \nPlease, contact support',
            // failure.maybeMap(
            //   insufficientPermission: (_) => 'Insufficient permissions',
            //   orElse: () => 'Unexpected error. \nPlease, contact support.',
            // ),
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              print('Sending email!');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
