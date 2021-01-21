import 'package:cybear_jinni/presentation/registration_page/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistrationPage extends StatelessWidget {
  static String tag = 'registration-page';

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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Center(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  children: <Widget>[
                    logo,
                    const SizedBox(height: 48.0),
                    FormWidget(),
                  ],
                ),
              ),
              Positioned(
                top: 16,
                left: 8,
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowLeft,
                  ),
                  onPressed: () {
                    Navigator.maybePop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
