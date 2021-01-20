import 'package:cybear_jinni/features/home_page/home_page.dart';
import 'package:cybear_jinni/features/shared_widgets/top_navigation_bar.dart';
import 'package:cybear_jinni/features/where_to_login_page/where_to_login_objcet_to_transfer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The user will choose where to login to, join into an existing home or
/// create his new home
class WhereToLoginPage extends StatelessWidget {
  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> contiueToHomePage(
      BuildContext context, String homePageType) async {
    final FirebaseAuth auth = FirebaseAuth.instance;

    final UserCredential _ = await auth.signInWithEmailAndPassword(
        email: _whereToLoginObjectToTransfer.userEmail,
        password: _whereToLoginObjectToTransfer.userPassword);

    Navigator.of(context).popUntil((route) => route.isFirst);

    if (homePageType == 'demo') {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    }
  }

  WhereToLoginObjectToTransfer _whereToLoginObjectToTransfer;

  @override
  Widget build(BuildContext context) {
    _whereToLoginObjectToTransfer = ModalRoute.of(context).settings.arguments
    as WhereToLoginObjectToTransfer;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Column(
        children: <Widget>[
          TopNavigationBar(
            'Choose where to login to',
            null,
            null,
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: leftIconFunction,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 20,
              color: Colors.black38,
              alignment: Alignment.center,
              child: Text('What would you like to do',
                  style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).textTheme.bodyText1.color))),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    color: Colors.greenAccent,
                    height: 100,
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      contiueToHomePage(context, 'demo');
                    },
                    child: Text(
                      'Open Demo',
                      style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).textTheme.bodyText1.color),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 100,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'Create Your Home',
                      style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).textTheme.bodyText1.color),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 100,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.orange,
                    onPressed: () {},
                    child: Text(
                      'Join Existing Home',
                      style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).textTheme.bodyText1.color),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
