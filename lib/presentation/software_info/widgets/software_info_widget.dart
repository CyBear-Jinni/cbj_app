import 'package:cybear_jinni/application/software_info/software_info_bloc.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class SoftwareInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return BlocBuilder<SoftwareInfoBloc, SoftwareInfoState>(
      builder: (context, state) {
        return state.map(
          initial: (Initial value) {
            return const Center(child: CircularProgressIndicator());
          },
          gotSoftwareInfoEntities: (GotSoftwareInfoEntities value) {
            final Map<String, SoftwareInfoEntity> softwareInfoEntities =
                value.softwareInfoEntities;

            return ListView.builder(
              itemCount: softwareInfoEntities.length,
              padding: const EdgeInsets.all(30),
              itemBuilder: (context, i) {
                final String key = softwareInfoEntities.keys.elementAt(i);
                final SoftwareInfoEntity? softwareInfoEntity =
                    softwareInfoEntities[key];
                return Column(
                  children: [
                    Text(
                      key,
                      style: const TextStyle(fontSize: 26),
                    ),
                    ListTileTheme(
                      textColor: Theme.of(context).textTheme.bodyText1!.color,
                      child: Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                const Text('Device name: '),
                                Text(
                                  softwareInfoEntity?.deviceName.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const Text('Pubspec yaml version: '),
                                Text(
                                  softwareInfoEntity?.pubspecYamlVersion
                                          .getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const Text('Proto last gen date: '),
                                Text(
                                  softwareInfoEntity?.protoLastGenDate
                                          .getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Dart SDK version: '),
                                Flexible(
                                  child: Text(softwareInfoEntity?.dartSdkVersion
                                          .getOrCrash() ??
                                      'No Info'),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const Text('Comp id: '),
                                Text(
                                  softwareInfoEntity?.compId.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const Text('Comp uuid: '),
                                Text(
                                  softwareInfoEntity?.compUuid.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const Text('Comp os: '),
                                Text(
                                  softwareInfoEntity?.compOs.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
