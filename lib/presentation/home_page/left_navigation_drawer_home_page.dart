import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftNavigationDrawerHomePage extends StatelessWidget {
  Future<void> _fireBaseLogOut(BuildContext context) async {
    try {
      context.router.replace(const ConnectToHubRoute());
    } catch (e) {
      logger.e(e); // TODO: show dialog with error
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
        child: ListView(
          reverse: true,
          children: <Widget>[
            Container(
              color: Colors.black87,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/cbj_half_app_logo.png',
                            width: 70.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'CyBear Jinni',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              reverse: true,
              child: Column(
                children: <Widget>[
                  Divider(
                    thickness: 0.5,
                    height: 0.5,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  Container(
                    color: Colors.greenAccent.withOpacity(0.8),
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.signOutAlt,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: 25,
                      ),
                      title: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      onTap: () {
                        _fireBaseLogOut(context);
                      },
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    height: 0.5,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.info,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: 25,
                      ),
                      title: Text(
                        'Software Info',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      onTap: () {
                        context.router.push(const SoftwareInfoRoute());
                      },
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    height: 0.5,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  Container(
                    color: Colors.blue,
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.globe,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: 25,
                      ),
                      title: Text(
                        'Add Remote Control Support',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      onTap: () {
                        context.router.push(const RemotePipesRoute());
                      },
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    height: 0.5,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  // Container(
                  //   color: Colors.redAccent,
                  //   child: ListTile(
                  //     leading: FaIcon(
                  //       FontAwesomeIcons.userPlus,
                  //       color: Theme.of(context).textTheme.bodyText1!.color,
                  //       size: 25,
                  //     ),
                  //     title: Text(
                  //       'Manage Users',
                  //       style: TextStyle(
                  //         color: Theme.of(context).textTheme.bodyText1!.color,
                  //       ),
                  //     ),
                  //     onTap: () {
                  //       context.router.push(const ManageUsersRoute());
                  //     },
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 0.5,
                  //   height: 0.5,
                  //   color: Theme.of(context).textTheme.bodyText1!.color,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
