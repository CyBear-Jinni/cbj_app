import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/tuya_auth/tuya_sign_in_form/tuya_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String? region = 'cn';

class TuyaSignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<TuyaSignInFormBloc, TuyaSignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (Either<CoreLoginFailure, Unit> either) => either.fold(
              (CoreLoginFailure failure) => {
                    FlushbarHelper.createError(
                      message: 'Validation error',
                      // failure.map(
                      //   cancelledByUser: (_) => 'Cancelled',
                      //   serverError: (_) => 'Server error',
                      //   invalidApiKey: (_) => 'Email already in use',
                      // ),
                    ).show(context),
                  }, (_) {
            context.router.push(const WhereToLoginRouteMinimalRoute());

            // context
            //     .read()<TuyaSignInFormBloc>()
            //     .add(const TuyaSignInFormEvent.());
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
                                'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
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
                        prefixIcon: FaIcon(FontAwesomeIcons.signInAlt),
                        labelText: 'Tuya User Name',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<TuyaSignInFormBloc>()
                          .add(TuyaSignInFormEvent.userNameChanged(value)),
                      validator: (_) => context
                          .read<TuyaSignInFormBloc>()
                          .state
                          .tuyaUserName
                          .value
                          .fold(
                            (CoreLoginFailure f) => 'Validation error',
                            //   f.maybeMap(
                            // invalidEmail: (result) => result.failedValue,
                            // containsSpace: (result) => result.failedValue,
                            // orElse: () => null,
                            // ),
                            (r) => null,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: FaIcon(FontAwesomeIcons.unlock),
                        labelText: 'Tuya User Password',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<TuyaSignInFormBloc>()
                          .add(TuyaSignInFormEvent.userPasswordChanged(value)),
                      validator: (_) => context
                          .read<TuyaSignInFormBloc>()
                          .state
                          .tuyaUserPassword
                          .value
                          .fold(
                            (CoreLoginFailure f) => 'Validation error',
                            //   f.maybeMap(
                            // invalidEmail: (result) => result.failedValue,
                            // containsSpace: (result) => result.failedValue,
                            // orElse: () => null,
                            // ),
                            (r) => null,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: FaIcon(FontAwesomeIcons.flag),
                        labelText: 'Tuya Country Code',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<TuyaSignInFormBloc>()
                          .add(TuyaSignInFormEvent.countryCodeChanged(value)),
                      validator: (_) => context
                          .read<TuyaSignInFormBloc>()
                          .state
                          .tuyaCountryCode
                          .value
                          .fold(
                            (CoreLoginFailure f) => 'Validation error',
                            //   f.maybeMap(
                            // invalidEmail: (result) => result.failedValue,
                            // containsSpace: (result) => result.failedValue,
                            // orElse: () => null,
                            // ),
                            (r) => null,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Select Region:        "),
                    DropdownButton<String>(
                      value: context
                          .read<TuyaSignInFormBloc>()
                          .state
                          .tuyaLoginRegion
                          .getOrCrash(),
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      hint: Text('Tuya Region'),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                      ),
                      onChanged: (value) => context
                          .read<TuyaSignInFormBloc>()
                          .add(TuyaSignInFormEvent.regionChanged(value)),
                      items: <String>[
                        'cn',
                        'eu',
                        'us',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<TuyaSignInFormBloc>().add(
                                    const TuyaSignInFormEvent.signIn(),
                                  );
                            },
                            child: const Text('SIGN IN').tr(),
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
          ],
        );
      },
    );
  }
}
