import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/auth/auth_bloc.dart';
import 'package:cybear_jinni/application/lifix_auth/lifx_sign_in_form/lifx_sign_in_form_bloc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LifxSignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<LifxSignInFormBloc, LifxSignInFormState>(
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
            context.router.push(const WhereToLoginRouteMinimalRoute());

            context
                .read()<AuthBloc>()
                .add(const AuthEvent.authCheckRequested());
          }),
        );
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
                      tag: 'Logo',
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: screenSize.height * 0.1,
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
                              ),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        // Image.asset('assets/cbj_logo.png'),
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
                          .read<LifxSignInFormBloc>()
                          .add(LifxSignInFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<LifxSignInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidEmail: (result) => result.failedValue,
                              containsSpace: (result) => result.failedValue,
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
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
                          .read<LifxSignInFormBloc>()
                          .add(LifxSignInFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .read<LifxSignInFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              shortPassword: (result) => result.failedValue,
                              containsSpace: (result) => result.failedValue,
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<LifxSignInFormBloc>().add(
                                    const LifxSignInFormEvent
                                        .signInWithEmailAndPasswordPassed(),
                                  );
                            },
                            child: const Text('SIGN IN'),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<LifxSignInFormBloc>().add(
                                    const LifxSignInFormEvent
                                        .registerWithEmailAndPassword(),
                                  );
                            },
                            child: const Text('REGISTER'),
                          ),
                        ),
                      ],
                    ),
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
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                onPressed: () {
                  context.router.push(const WhereToLoginRouteOffline());
                },
                child: Text(
                  'For More Options',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
