import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/tuya_auth/tuya_sign_in_form/tuya_sign_in_form_bloc.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/presentation/add_vendors_pages/add_tuya_vendor/widgets/country_dial_codes.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

class TuyaSignInForm extends StatefulWidget {
  @override
  State<TuyaSignInForm> createState() => _TuyaSignInFormState();
}

class _TuyaSignInFormState extends State<TuyaSignInForm> {
  final TextEditingController _countryCode = TextEditingController();

  Future<void> getCountryCode(BuildContext context) async {
    final Position position = await Geolocator.getCurrentPosition();
    final List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final Placemark place = placemarks[0];

    for (int i = 0; i < countryDialCodes.length; i++) {
      if (countryDialCodes[i]['name']!.toLowerCase() ==
          place.country!.toLowerCase()) {
        setState(() {
          _countryCode.text = countryDialCodes[i]['dial_code'].toString();
        });
        break;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getCountryCode(context);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<TuyaSignInFormBloc, TuyaSignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (dartz.Either<CoreLoginFailure, dartz.Unit> either) => either.fold(
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
                      keyboardType: TextInputType.phone,
                      controller: _countryCode,
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
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: FaIcon(FontAwesomeIcons.globe),
                        labelText: 'Tuya Region',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<TuyaSignInFormBloc>()
                          .add(TuyaSignInFormEvent.regionChanged(value)),
                      validator: (_) => context
                          .read<TuyaSignInFormBloc>()
                          .state
                          .tuyaLoginRegion
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
