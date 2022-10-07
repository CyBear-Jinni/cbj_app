import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/plus_button_settings/plus_button_settings_bloc.dart';
import 'package:cybear_jinni/domain/hub/hub_entity.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class PlusButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocBuilder<PlusButtonSettingsBloc, PlusButtonSettingsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return SingleChildScrollView(
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
                  ColoredBox(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1,
                        ),
                        ColoredBox(
                          color: Colors.purple.withOpacity(0.7),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.sitemap,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              size: 25,
                            ),
                            title: Text(
                              'Add Automation',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
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
                        ColoredBox(
                          color: Colors.brown.withOpacity(0.9),
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.solidLightbulb,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              size: 25,
                            ),
                            title: Text(
                              'Add Device',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
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
                        ColoredBox(
                          color: Colors.blue,
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.globe,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              size: 25,
                            ),
                            title: Text(
                              'Add Remote Control Support',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
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
                  ColoredBox(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1,
                        ),
                        ColoredBox(
                          color: Colors.redAccent.withOpacity(0.9),
                          child: ListTile(
                            leading: Iconify(
                              SimpleIcons.node_red,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              size: 23,
                            ),
                            title: Text(
                              'Open Node-RED of Hub',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
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
                                    title: Text(
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
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              size: 25,
                            ),
                            title: Text(
                              'Software Info',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
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
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              size: 25,
                            ),
                            title: Text(
                              'Log Out',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            onTap: () {
                              context.read<PlusButtonSettingsBloc>().add(
                                    const PlusButtonSettingsEvent.logout(),
                                  );
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
            );
          },
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (_) => const Text('Found hub'),
          loadFailure: (failure) => const Text('Failure'),
        );
      },
    );
  }
}
