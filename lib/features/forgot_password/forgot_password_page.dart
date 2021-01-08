import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String emailVal;

    const Padding title = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text('Forgot Password',
          style: TextStyle(fontSize: 30, color: Colors.black))
    );

    final TextFormField email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (String value) => {emailVal = value},
      decoration: InputDecoration(
        hintText: 'Email'.tr(),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );


    final Padding button = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: ()=> {},
        padding: const EdgeInsets.all(12),
        color: Theme.of(context).accentColor,
        child: const Text('Submit', style: TextStyle(color: Colors.white)).tr(),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [title, email, button],
          )
        ),
      )
    );
  }

}