import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/lifx_auth/lifx_sign_in_form/lifx_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LifxSignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<LifxSignInFormBloc, LifxSignInFormState>(
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
            //     .read()<LifxSignInFormBloc>()
            //     .add(const LifxSignInFormEvent.());
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
                        prefixIcon: FaIcon(
                          FontAwesomeIcons.key,
                        ),
                        labelText: 'Lifx API Key',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<LifxSignInFormBloc>()
                          .add(LifxSignInFormEvent.apiKeyChanged(value)),
                      validator: (_) => context
                          .read<LifxSignInFormBloc>()
                          .state
                          .lifxApiKey
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
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<LifxSignInFormBloc>().add(
                                    const LifxSignInFormEvent
                                        .signInWithApiKey(),
                                  );

                              Fluttertoast.showToast(
                                msg: 'Sign in to Lifix, please restart the app '
                                    'to see the new devices',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.deepPurple,
                                textColor: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 16.0,
                              );
                              Navigator.pop(context);
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
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                ),
                onPressed: () {
                  launchUrl(Uri.parse('https://cloud.lifx.com/'));
                },
                child: Text(
                  'Get Lifx API key from Lifx website',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ).tr(),
              ),
            ),
          ],
        );
      },
    );
  }
}
