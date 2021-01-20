import 'package:cybear_jinni/core/route_names.dart';
import 'package:cybear_jinni/features/where_to_login_page/where_to_login_objcet_to_transfer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormWidget();
  }
}

class _FormWidget extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidation = false;
  String emailVal, passwordVal;

  final BorderRadius borderRadius = BorderRadius.circular(32.0);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    void _showErrToast(String msg) {
      Fluttertoast.showToast(
          msg: msg,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.blueGrey,
          textColor: Theme.of(context).textTheme.bodyText1.color,
          fontSize: 16.0);
    }
    void _loginUser() async {
      try {
        WhereToLoginObjectToTransfer whereToLoginObjcetToTransfer =
            WhereToLoginObjectToTransfer(emailVal, passwordVal);

        Navigator.pushNamed(context, '/$whereToLoginPage',
            arguments: whereToLoginObjcetToTransfer);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          _showErrToast('No user found for this email.');
        } else if (e.code == 'wrong-password') {
          _showErrToast('Wrong password entered');
        } else {
          _showErrToast('Unable to Login, Try again!');
        }
      }
    }
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
      _loginUser();
    }

    final TextFormField email = TextFormField(
      keyboardType: TextInputType.emailAddress,
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
      onSaved: (String value) => {emailVal = value},
      decoration: InputDecoration(
        hintText: 'Email'.tr(),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
      ),
    );

    final TextFormField password = TextFormField(
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
      onSaved: (String value) => {passwordVal = value},
      decoration: InputDecoration(
        hintText: 'Password'.tr(),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
      ),
    );

    final Padding loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: _submitForm,
        padding: const EdgeInsets.all(12),
        color: Theme.of(context).accentColor,
        child: Text('Log_In',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color))
            .tr(),
      ),
    );

    final SizedBox verticalSpacing = SizedBox(height: screenSize.height*0.05);

    return Form(
    key: _formKey,
      child: Column(
        children: <Widget>[
          email,
          verticalSpacing,
          password,
          verticalSpacing,
          loginButton,
        ],
      ),
    );
  }
}
