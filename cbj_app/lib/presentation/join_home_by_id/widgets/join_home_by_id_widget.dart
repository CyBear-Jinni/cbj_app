import 'package:auto_route/auto_route.dart';
import 'package:clipboard/clipboard.dart';
import 'package:cybear_jinni/application/join_home_by_id/join_home_by_id_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JoinHomeByIdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    String homeId = '';

    return BlocConsumer<JoinHomeByIdBloc, JoinHomeByIdState>(
      listener: (context, state) {
        state.map(
          (value) => null,
          loading: (_) {
            return const CircularProgressIndicator(
              backgroundColor: Colors.cyan,
              strokeWidth: 5,
            );
          },
          loaded: (l) {
            return const Text('Loaded');
          },
          error: (e) {
            return const Text('Failure');
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () async {
                final String fromClipboard = await FlutterClipboard.paste();

                context
                    .read<JoinHomeByIdBloc>()
                    .add(JoinHomeByIdEvent.addHomeById(fromClipboard));
              },
              child: Text(
                'Paste and search',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text('Home ID'),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.greenAccent.withOpacity(0.3),
                      prefixIcon: Icon(
                        Icons.login,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                      labelText: 'Home ID',
                      labelStyle: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color),
                    ),
                    autocorrect: false,
                    onChanged: (value) {
                      homeId = value;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
              ),
              onPressed: () {
                context
                    .read<JoinHomeByIdBloc>()
                    .add(JoinHomeByIdEvent.addHomeById(homeId));
              },
              child: Text(
                'Join Home from text form',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ),
            state.map(
              (value) => const SizedBox(),
              loading: (_) {
                return const CircularProgressIndicator(
                  backgroundColor: Colors.cyan,
                  strokeWidth: 5,
                );
              },
              loaded: (l) {
                context.router.replace(const HomeRoute());

                return const Text('Loaded');
              },
              error: (e) {
                return const Text('Failure');
              },
            )
          ],
        );
      },
    );
  }
}
