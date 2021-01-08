import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String emailVal;

    final Hero logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    const Text title = Text('Forgot Password',
          style: TextStyle(fontSize: 28, color: Colors.black));

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
        child: const Text('Submit', style: TextStyle(color: Colors.white)),
      ),
    );

    const SizedBox separator = SizedBox(height: 32.0);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                children: <Widget>[
                  logo,
                  separator,
                  const Center(child: title),
                  separator,
                  Column(
                    children: [
                      email,
                      separator,
                      button
                    ]
                  )
                ],
              )
            ),
            Positioned(
              top: 32,
              left: 8,
              child: IconButton(icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.maybePop(context);
                })
            )
        ])
    );
  }

}