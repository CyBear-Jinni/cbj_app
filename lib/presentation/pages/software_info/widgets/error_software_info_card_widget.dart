import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class ErrorSoftwareInfoCard extends StatelessWidget {
  const ErrorSoftwareInfoCard({
    required this.homeUser,
    super.key,
  });

  final HomeUserEntity? homeUser;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            TextAtom(
              'Invalid software nfo, please, contact support',
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
              homeUser!.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
