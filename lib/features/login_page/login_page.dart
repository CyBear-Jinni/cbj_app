import 'package:cybear_jinni/features/login_page/form_widget.dart';
import 'package:cybear_jinni/features/registration_page/registration_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String tag = 'login-page';



  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double sidePadding =  screenSize.width*0.05;
    final Hero logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: screenSize.height*0.1,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final FlatButton createNewAccount = FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => RegistrationPage()));
      },
      child: Text(
          'Create_new_account',
          style: TextStyle(color: Colors.black54),
        ).tr(),

    );

    final FlatButton forgotPassword = FlatButton(
      onPressed: () {},
      child: const Text(
        'Forgot_password?',
        style: TextStyle(color: Colors.black54),
      ).tr(),
    );

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: sidePadding, right: sidePadding),
            children: <Widget>[
              logo,
              SizedBox(height: screenSize.height*0.1),
              FormWidget(),
              createNewAccount,
              forgotPassword,
            ],
          ),
        ),
      ),
    );
  }
}
