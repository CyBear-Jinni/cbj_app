import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The user will choose where to login to, options only for offline
class WhereToLoginPageOffline extends StatelessWidget {
  WhereToLoginPageOffline();

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose type of login'),
      ),
      backgroundColor: Colors.deepPurpleAccent[200].withOpacity(0.6),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
