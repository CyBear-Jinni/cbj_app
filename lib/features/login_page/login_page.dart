import 'package:CyBearJinni/features/registration_page/registration_page.dart';
import 'package:flutter/material.dart';

import 'form_widget.dart';

class LoginPage extends StatelessWidget {
  static String tag = 'login-page';

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final createNewAccount = FlatButton(
      child: Text(
        'Create new account',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => RegistrationPage()));
      },
    );

    final forgotPassword = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
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
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
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
