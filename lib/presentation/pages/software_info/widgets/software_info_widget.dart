import 'package:cybear_jinni/application/software_info/software_info_bloc.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class SoftwareInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    TextAtom(
                      key,
                      style: const TextStyle(fontSize: 26),
                    ),
                    ListTileTheme(
                      textColor: Theme.of(context).textTheme.bodyLarge!.color,
                      child: Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                const TextAtom('Device name: '),
                                TextAtom(
                                  softwareInfoEntity?.deviceName.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const TextAtom('Pubspec yaml version: '),
                                TextAtom(
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
                                const TextAtom('Proto last gen date: '),
                                TextAtom(
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
                                const TextAtom('Dart SDK version: '),
                                Flexible(
                                  child: TextAtom(
                                    softwareInfoEntity?.dartSdkVersion
                                            .getOrCrash() ??
                                        'No Info',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const TextAtom('Comp id: '),
                                TextAtom(
                                  softwareInfoEntity?.compId.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const TextAtom('Comp uuid: '),
                                TextAtom(
                                  softwareInfoEntity?.compUuid.getOrCrash() ??
                                      'No Info',
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                const TextAtom('Comp os: '),
                                TextAtom(
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
