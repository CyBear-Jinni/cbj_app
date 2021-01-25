import 'package:cybear_jinni/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/sign_in_page/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  static String tag = 'login-page';

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    // double sidePadding = screenSize.width * 0.05;
    // final Hero logo = Hero(
    //   tag: 'hero',
    //   child: CircleAvatar(
    //     backgroundColor: Colors.transparent,
    //     radius: screenSize.height * 0.1,
    //     child: Image.asset('assets/logo.png'),
    //   ),
    // );
    //
    // final FlatButton createNewAccount = FlatButton(
    //   onPressed: () {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (BuildContext context) => RegistrationPage()));
    //   },
    //   child: Text(
    //       'Create_new_account',
    //       style: TextStyle(color: Colors.black54),
    //     ).tr(),
    //
    // );
    //
    // final FlatButton forgotPassword = FlatButton(
    //   onPressed: () {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (BuildContext context) => ForgotPasswordPage()));
    //   },
    //   child: const Text(
    //     'Forgot_password?',
    //     style: TextStyle(color: Colors.black54),
    //   ).tr(),
    // );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
        ),
        body: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
        )
        // Center(
        //   child: ListView(
        //     shrinkWrap: true,
        //     padding: EdgeInsets.only(left: sidePadding, right: sidePadding),
        //     children: <Widget>[
        //       logo,
        //       SizedBox(height: screenSize.height*0.1),
        //       FormWidget(),
        //       createNewAccount,
        //       forgotPassword,
        //     ],
        //   ),
        // ),
        );
  }
}
