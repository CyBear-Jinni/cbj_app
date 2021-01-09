import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormWidget();
  }
}

class _FormWidget extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String emailVal;

    final TextFormField email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (String value) => {emailVal = value},
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
        child: const Text('Send', style: TextStyle(color: Colors.white)).tr(),
      ),
    );

    const SizedBox separator = SizedBox(height: 32.0);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          email,
          separator,
          button
        ],
      ),
    );
  }

}