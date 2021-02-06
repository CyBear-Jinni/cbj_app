import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                    (failure) => {
                          FlushbarHelper.createError(
                            message: failure.map(
                              cancelledByUser: (_) => 'Cancelled',
                              serverError: (_) => 'Server error',
                              emailAlreadyInUse: (_) => 'Email already in use',
                              invalidEmailAndPasswordCombination: (_) =>
                                  'Invalid email and password combination',
                            ),
                          ).show(context),
                        }, (_) {
                  ExtendedNavigator.of(context)
                      .replace(Routes.initializeHomePage);

                  context
                      .read()<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                }));
      },
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: [
                    Hero(
                      tag: 'hero',
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: screenSize.height * 0.1,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null),
                              (r) => null),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Short Password',
                                  orElse: () => null),
                              (r) => null),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .signInWithEmailAndPasswordPassed(),
                                  );
                            },
                            child: const Text('SIGN IN'),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .registerWithEmailAndPassword(),
                                  );
                            },
                            child: const Text('REGISTER'),
                          ),
                        ),
                      ],
                    ),
                    // RaisedButton(
                    //   onPressed: () {
                    //     context.read<SignInFormBloc>().add(
                    //           const SignInFormEvent.signInWithGooglePressed(),
                    //         );
                    //   },
                    //   color: Colors.lightGreen,
                    //   child: const Text(
                    //     'SIGN IN WITH GOOGLE',
                    //     style: TextStyle(
                    //         color: Colors.white, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    if (state.isSubmitting) ...[
                      const SizedBox(
                        height: 8,
                      ),
                      const LinearProgressIndicator()
                    ],
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  ExtendedNavigator.of(context)
                      .push(Routes.whereToLoginPageOffline);
                },
                child: const Text('For More Options'),
              ),
            ),
          ],
        );
      },
    );
  }
}
