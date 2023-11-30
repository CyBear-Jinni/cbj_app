import 'package:clipboard/clipboard.dart';
import 'package:cybear_jinni/application/add_user_to_home/add_user_to_home_bloc.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddUserToHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userToAddEmail = '';

    return BlocConsumer<AddUserToHomeBloc, AddUserToHomeState>(
      listener: (context, state) {
        state.map(
          (value) => const TextAtom('Initial'),
          actionInProgress: (_) {
            return const CircularProgressIndicator(
              backgroundColor: Colors.cyan,
              strokeWidth: 5,
            );
          },
          addingUserSuccess: (s) {
            return TextButton(
                onPressed: () {}, child: const TextAtom('Success'));
          },
          addingHomeFailure: (e) {
            return const TextAtom('Failure');
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const TextAtom('Email'),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.greenAccent.withOpacity(0.3),
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    autocorrect: false,
                    onChanged: (value) {
                      userToAddEmail = value;
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
                backgroundColor: MaterialStateProperty.all(
                  Colors.pinkAccent,
                ),
              ),
              onPressed: () {
                context.read<AddUserToHomeBloc>().add(
                      AddUserToHomeEvent.addUserToHomeByEmail(userToAddEmail),
                    );
              },
              child: TextAtom(
                'Add User',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
            state.map(
              (value) => const SizedBox(),
              actionInProgress: (_) {
                return const CircularProgressIndicator(
                  backgroundColor: Colors.cyan,
                  strokeWidth: 5,
                );
              },
              addingUserSuccess: (s) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      TextAtom(
                        'User have been add successfully',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextAtom(
                        'Copy home ID',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.green,
                          ),
                        ),
                        onPressed: () {
                          FlutterClipboard.copy(s.homeId).then(
                            (value) => Fluttertoast.showToast(
                              msg: 'Copy',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.SNACKBAR,
                              backgroundColor: Colors.lightBlue,
                              textColor:
                                  Theme.of(context).textTheme.bodyLarge!.color,
                              fontSize: 16.0,
                            ),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            const TextAtom('Press to copy'),
                            TextAtom(
                              s.homeId,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextAtom(
                        'Please give home id to the user, he needs it to'
                        ' join the home.',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                );
              },
              addingHomeFailure: (e) {
                return TextAtom(
                  'Adding user Failed.\n'
                  'Did the user already created account with that email?',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
