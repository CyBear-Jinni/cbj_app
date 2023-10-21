import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/application/tuya_auth/tuya_sign_in_form/tuya_sign_in_form_bloc.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartLifeSignInForm extends StatelessWidget {
  const SmartLifeSignInForm(this.vendor);

  final VendorData vendor;

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
                        prefixIcon: FaIcon(FontAwesomeIcons.rightToBracket),
                        labelText: 'Smart Life User Name',
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
                        labelText: 'Smart Life User Password',
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
                        labelText: 'Smart Life Country Code',
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
                    const Text(
                      'Select Region:',
                      style: TextStyle(color: Colors.black),
                    ),
                    DropdownButton<String>(
                      value: context
                          .read<TuyaSignInFormBloc>()
                          .state
                          .tuyaLoginRegion
                          .getOrCrash(),
                      icon: const Icon(Icons.arrow_drop_down),
                      hint: const Text('Smart Life Region'),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                      ),
                      onChanged: (value) => context
                          .read<TuyaSignInFormBloc>()
                          .add(TuyaSignInFormEvent.regionChanged(value)),
                      items: <String>[
                        'us',
                        'eu',
                        'cn',
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
                                    TuyaSignInFormEvent.vendorChanged(
                                      VendorsAndServices.smartLife.name,
                                    ),
                                  );
                              context.read<TuyaSignInFormBloc>().add(
                                    const TuyaSignInFormEvent
                                        .signInWithTuyaApiKey(),
                                  );

                              Fluttertoast.showToast(
                                msg:
                                    'Sign in to Smart Life, please restart the '
                                    'app to see the new devices',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.lightBlueAccent,
                                textColor: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
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
                      const LinearProgressIndicator(),
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
