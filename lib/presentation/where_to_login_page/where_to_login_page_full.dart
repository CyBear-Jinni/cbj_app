import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The user will choose where to login to, join into an existing home or
/// create his new home
class WhereToLoginPageFull extends StatelessWidget {
  WhereToLoginPageFull();

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Column(
        children: <Widget>[
          TopNavigationBar(
            'Choose type of login',
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
                      ExtendedNavigator.of(context).replace(Routes.homePage);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.vial,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Open Demo',
                            style: TextStyle(
                                fontSize: 25,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 100,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.brown,
                    onPressed: () {
                      ExtendedNavigator.of(context).replace(Routes.homePage);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.tree,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Work Only On WiFi',
                            style: TextStyle(
                                fontSize: 25,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 100,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    onPressed: () {
                      ExtendedNavigator.of(context).replace(Routes.signInPage);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.doorOpen,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Create Your Home',
                            style: TextStyle(
                                fontSize: 25,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    height: 100,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.orange,
                    onPressed: () {
                      ExtendedNavigator.of(context).replace(Routes.signInPage);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.userFriends,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Join Existing Home',
                            style: TextStyle(
                                fontSize: 25,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                          ),
                        ],
                      ),
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
