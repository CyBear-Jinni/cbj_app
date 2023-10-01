import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/esphome_auth/esphome_sign_in_form/esphome_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EspHomeSignInForm extends StatelessWidget {
  const EspHomeSignInForm(this.vendor);

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<EspHomeSignInFormBloc, EspHomeSignInFormState>(
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
            //     .read()<EspHomeSignInFormBloc>()
            //     .add(const EspHomeSignInFormEvent.());
          }),
        );
      },
      builder: (context, state) {
        return Form(
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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          vendor.image ?? '',
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
                  labelText: 'ESPHome device password',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<EspHomeSignInFormBloc>()
                    .add(EspHomeSignInFormEvent.apiKeyChanged(value)),
                validator: (_) => context
                    .read<EspHomeSignInFormBloc>()
                    .state
                    .espHomeDevicePassword
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
                        context.read<EspHomeSignInFormBloc>().add(
                              const EspHomeSignInFormEvent
                                  .signInWithEspHomeApiKey(),
                            );

                        Fluttertoast.showToast(
                          msg: 'Sign in to ESPHome, devices will appear in the '
                              'app after getting discovered',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.deepPurple,
                          textColor:
                              Theme.of(context).textTheme.bodyLarge!.color,
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
                const LinearProgressIndicator(),
              ],
            ],
          ),
        );
      },
    );
  }
}
