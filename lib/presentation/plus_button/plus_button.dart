import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlusButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add and Manage'),
        backgroundColor: Colors.purple.withOpacity(0.7),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.topLeft,
              child: const Text(
                'Add:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                    color: Colors.purple.withOpacity(0.7),
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.sitemap,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: 25,
                      ),
                      title: Text(
                        'Add Automation',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      onTap: () {
                        context.router
                            .push(const ChooseAutomationTypeToAddRoute());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                    color: Colors.redAccent.withOpacity(0.9),
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.solidLightbulb,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        size: 25,
                      ),
                      title: Text(
                        'Add Device',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      onTap: () {
                        context.router
                            .push(const ChooseDeviceVendorToAddRoute());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 1,
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
                  const SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                'Manage:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 1,
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
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                    color: Colors.greenAccent,
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
                        context.router.replace(const ConnectToHubRoute());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
