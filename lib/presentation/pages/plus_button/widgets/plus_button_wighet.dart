import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/hub/hub_entity.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/domain/i_hub_connection_repository.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class PlusButtonWidget extends StatelessWidget {
  Future<void> _logout(BuildContext context) async {
    context.router.replace(const ConnectToHubRoute());
    ConnectionsService.setCurrentConnectionType(null);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.topLeft,
            child: const TextAtom(
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
          ColoredBox(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 1),
                ColoredBox(
                  color: Colors.indigoAccent.withOpacity(0.7),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.camera,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'Turn Phone To a Security Camera',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () async {
                      context.router.push(const SmartCameraContainerRoute());
                      await IHubConnectionRepository.instance.closeConnection();
                    },
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                ColoredBox(
                  color: Colors.brown.withOpacity(0.9),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidLightbulb,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'Add Device',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () {
                      context.router.push(const ChooseDeviceVendorToAddRoute());
                    },
                  ),
                ),
                const SizedBox(height: 1),
                ColoredBox(
                  color: Colors.blue,
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.globe,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'Add Remote Control Support',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () {
                      context.router.push(const RemotePipesRoute());
                    },
                  ),
                ),
                const SizedBox(height: 1),
                ColoredBox(
                  color: Colors.purple.withOpacity(0.7),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.sitemap,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'Add Automation',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () {
                      context.router
                          .push(const ChooseAutomationTypeToAddRoute());
                    },
                  ),
                ),
                const SizedBox(height: 1),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const TextAtom(
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
          ColoredBox(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 1,
                ),
                ColoredBox(
                  color: Colors.pink.withOpacity(0.9),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.computer,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'All Devices in the network',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () =>
                        context.router.push(const DevicesInNetworkRoute()),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                ColoredBox(
                  color: Colors.redAccent.withOpacity(0.9),
                  child: ListTile(
                    leading: Iconify(
                      SimpleIcons.node_red,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 23,
                    ),
                    title: TextAtom(
                      'Open Node-RED of Hub',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () {
                      final HubEntity? hubEntity =
                          IHubConnectionRepository.hubEntity;
                      if (hubEntity != null &&
                          hubEntity.lastKnownIp.isValid()) {
                        final String lastKnownIp =
                            hubEntity.lastKnownIp.getOrCrash();
                        launchUrl(
                          Uri.parse('http://$lastKnownIp:1880'),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (_) => const AlertDialog(
                            title: TextAtom(
                              "Can't find Hub/Node-Red IP to connect to",
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                ColoredBox(
                  color: Colors.orangeAccent,
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.info,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'Software Info',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
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
                ColoredBox(
                  color: Colors.greenAccent,
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.rightFromBracket,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: 25,
                    ),
                    title: TextAtom(
                      'Log Out',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    onTap: () => _logout(context),
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
    );
  }
}
