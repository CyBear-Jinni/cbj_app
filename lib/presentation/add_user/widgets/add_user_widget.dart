import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:cybear_jinni/application/add_user/add_user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    String userToAddEmail = '';

    return BlocConsumer<AddUserBloc, AddUserState>(
      listener: (context, state) {
        state.map(
          (value) => const Text('Initial'),
          actionInProgress: (_) {
            return const CircularProgressIndicator(
              backgroundColor: Colors.cyan,
              strokeWidth: 5,
            );
          },
          addingUserSuccess: (s) {
            return FlatButton(onPressed: () {}, child: const Text('Success'));
          },
          addingHomeFailure: (e) {
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
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text('Email'),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
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
            FlatButton(
              color: Colors.pinkAccent,
              onPressed: () {
                context
                    .read<AddUserBloc>()
                    .add(AddUserEvent.addUserByEmail(userToAddEmail));
              },
              child: const Text('Add User'),
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
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'User have been add successfully',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Copy home ID',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FlatButton(
                        color: Colors.green,
                        onPressed: () {
                          ClipboardManager.copyToClipBoard(s.homeId);
                          Fluttertoast.showToast(
                              msg: 'Copy',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.SNACKBAR,
                              backgroundColor: Colors.lightBlue,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        },
                        child: Column(
                          children: <Widget>[
                            const Text('Press to copy'),
                            Text(
                              s.homeId,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Please give home id to the user, he needs it to'
                        ' join the home.',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                );
              },
              addingHomeFailure: (e) {
                return const Text(
                  'Adding user Failed.\n'
                  'Did the user already created account with that email?',
                  style: TextStyle(color: Colors.white),
                );
              },
            )
          ],
        );
      },
    );
  }
}
