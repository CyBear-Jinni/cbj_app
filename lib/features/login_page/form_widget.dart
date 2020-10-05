import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormWidget();
  }
}

class _FormWidget extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidation = false;

  @override
  Widget build(BuildContext context) {
    void _submitForm() {
      if (!autoValidation) {
        setState(() {
          autoValidation = true;
        });
      }
      if (!_formKey.currentState.validate()) {
        return;
      }
      _formKey.currentState.save();
      Navigator.pushNamed(context, '/home');
    }

    final TextFormField email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      initialValue: 'guy@gmail.com',
      autovalidate: autoValidation,
      maxLength: 40,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email_is_required'.tr();
        }
        if (value.contains(' ')) {
          return 'Email_cannot_contain_spaces'.tr();
        }
        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Email_is_invalid'.tr();
        }
        return null;
      },
      onSaved: (String value) => print('Check login to user'),
      decoration: InputDecoration(
        hintText: 'Email'.tr(),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final TextFormField password = TextFormField(
      initialValue: '12345678',
      obscureText: true,
      maxLength: 40,
      autovalidate: autoValidation,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password_is_required'.tr();
        }
        if (value.contains(' ')) {
          return 'Password_cannot_contain_spaces'.tr();
        }
        if (value.length <= 5) {
          return 'Password_must_be_bigger_than__characters'
              .tr(args: <String>[5.toString()]);
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Password'.tr(),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final Padding loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: _submitForm,
        padding: const EdgeInsets.all(12),
        color: Theme.of(context).accentColor,
        child: const Text('Log_In', style: TextStyle(color: Colors.white)).tr(),
      ),
    );

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          email,
          const SizedBox(height: 25.0),
          password,
          const SizedBox(height: 24.0),
          loginButton,
        ],
      ),
    );
  }
}
