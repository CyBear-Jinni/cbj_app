import 'package:cybear_jinni/presentation/forgot_password/form_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// forgot password screen contains field for email
/// on submit a reset password link will be sent
/// to inserted email address
class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Hero logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final Text title = const Text('Forgot_password',
            style: TextStyle(fontSize: 28, color: Colors.black))
        .tr();

    const SizedBox separator = SizedBox(height: 32.0);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: <Widget>[
          Center(
              child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              separator,
              Center(child: title),
              separator,
              FormWidget()
            ],
          )),
          Positioned(
              top: 32,
              left: 8,
              child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.maybePop(context);
                  }))
        ]));
  }
}
