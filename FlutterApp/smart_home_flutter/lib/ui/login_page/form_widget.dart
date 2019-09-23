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

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      initialValue: "guy@gmail.com",
      autofocus: false,
      autovalidate: autoValidation,
      maxLength: 40,
      validator: (String value) {
        if (value.isEmpty) {
          return "Email is required";
        }
        if (value.contains(' ')) {
          return 'Email cannot contain spaces';
        }
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return "Email is invalid";
        }
        return null;
      },
      onSaved: (String value) => print('wow man thats prity coll'),
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: "12345678",
      obscureText: true,
      maxLength: 40,
      autovalidate: autoValidation,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is required';
        }
        if (value.contains(' ')) {
          return 'Password cannot contain spaces';
        }
        if (value.length <= 5) {
          return "Password must be bigger than 5 characters";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: _submitForm,
        padding: EdgeInsets.all(12),
        color: Theme.of(context).accentColor,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          email,
          SizedBox(height: 25.0),
          password,
          SizedBox(height: 24.0),
          loginButton,
        ],
      ),
    );
  }
}
