import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftNavigationDrawerHomePage extends StatelessWidget {
  Future<void> _fireBaseLogOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      ExtendedNavigator.of(context).replace(Routes.signInPage);
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        color: Colors.black54,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black87,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/cbj_app_logo.png',
                            width: 70.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'CyBear Jinni',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Settings',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                    ListTile(
                      tileColor: Colors.blue,
                      leading: FaIcon(
                        FontAwesomeIcons.userPlus,
                        color: Theme.of(context).textTheme.bodyText1.color,
                        size: 25,
                      ),
                      title: const Text('Manage Users'),
                      onTap: () {
                        ExtendedNavigator.of(context)
                            .push(Routes.manageUsersPage);
                      },
                    ),
                    Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                    ListTile(
                      tileColor: Colors.greenAccent,
                      leading: FaIcon(
                        FontAwesomeIcons.signOutAlt,
                        color: Theme.of(context).textTheme.bodyText1.color,
                        size: 25,
                      ),
                      title: const Text('Log Out'),
                      onTap: () {
                        _fireBaseLogOut(context);
                      },
                    ),
                    Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
