import 'dart:collection';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_tv_entity/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartTvMolecule extends StatefulWidget {
  const SmartTvMolecule(this.entity);

  final GenericSmartTvDE entity;

  @override
  State<SmartTvMolecule> createState() => _SmartTvMoleculeState();
}

class _SmartTvMoleculeState extends State<SmartTvMolecule> {
  Future onStop() async {
    FlushbarHelper.createLoading(
      message: 'Stop smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityProperties.smartTvSwitchState, EntityActions.close);
  }

  Future onPlay() async {
    FlushbarHelper.createLoading(
      message: 'Play smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityProperties.smartTvSwitchState, EntityActions.play);
  }

  void onPause() {
    FlushbarHelper.createLoading(
      message: 'Close current app on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityProperties.smartTvSwitchState, EntityActions.pause);
  }

  void playVideo(String url) {
    FlushbarHelper.createLoading(
      message: 'Open url on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    setEntityState(EntityProperties.openUrl, EntityActions.open, value: url);
  }

  void setEntityState(
    EntityProperties property,
    EntityActions action, {
    String? value,
  }) {
    final VendorsAndServices? vendor =
        widget.entity.cbjDeviceVendor.vendorsAndServices;
    if (vendor == null) {
      return;
    }
    final HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor =
        HashMap();
    uniqueIdByVendor.addEntries(
      [
        MapEntry(
          vendor,
          HashSet<String>()
            ..addAll([widget.entity.deviceCbjUniqueId.getOrCrash()]),
        ),
      ],
    );
    IPhoneAsHub.instance.setEntityState(
      uniqueIdByVendor: uniqueIdByVendor,
      property: property,
      actionType: action,
      value: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: () {
                // TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     hintText: 'Enter a search term',
                //   ),
                // );
                OpenUrlPopUp(context, playVideo);
              },
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.video,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Open Video',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: onStop,
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.xmark,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Close',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: onPause,
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.pause,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Pause',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.grey,
                ),
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                    const BorderSide(color: Colors.white60),
                    const BorderSide(color: Colors.white60),
                    22,
                  ),
                ),
              ),
              onPressed: onPlay,
              child: Tab(
                icon: FaIcon(
                  FontAwesomeIcons.play,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
                child: TextAtom(
                  'Play',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // Next and previous does not seep to currently work for me on Chromecast
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     TextButton(
        //       style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all(
        //           Colors.grey,
        //         ),
        //         side: MaterialStateProperty.all(
        //           BorderSide.lerp(
        //             const BorderSide(color: Colors.white60),
        //             const BorderSide(color: Colors.white60),
        //             22,
        //           ),
        //         ),
        //       ),
        //       onPressed: () {
        //         queueNextEvent(
        //           context,
        //         );
        //       },
        //       child: Tab(
        //         icon: FaIcon(
        //           FontAwesomeIcons.backwardStep,
        //           color: Theme.of(context).textTheme.bodyLarge!.color,
        //         ),
        //         child: TextAtom(
        //           'Queue Prev',
        //           style: TextStyle(
        //             color: Theme.of(context).textTheme.bodyLarge!.color,
        //             fontSize: 16,
        //           ),
        //         ),            //       ),
        //     ),
        //     const SizedBox(width: 10),
        //     TextButton(
        //       style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all(
        //           Colors.grey,
        //         ),
        //         side: MaterialStateProperty.all(
        //           BorderSide.lerp(
        //             const BorderSide(color: Colors.white60),
        //             const BorderSide(color: Colors.white60),
        //             22,
        //           ),
        //         ),
        //       ),
        //       onPressed: () {
        //         queueNextEvent(
        //           context,
        //         );
        //       },
        //       child: Tab(
        //         icon: FaIcon(
        //           FontAwesomeIcons.forwardStep,
        //           color: Theme.of(context).textTheme.bodyLarge!.color,
        //         ),
        //         child: TextAtom(
        //           'Queue Next',
        //           style: TextStyle(
        //             color: Theme.of(context).textTheme.bodyLarge!.color,
        //             fontSize: 16,
        //           ),
        //         ),            //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
      ],
    );
  }
}

class OpenUrlPopUp {
  OpenUrlPopUp(this.contextFromParent, this.onOpenUrl) {
    openUrlPopUp();
  }

  BuildContext contextFromParent;
  final Function(String) onOpenUrl;

  void openUrlPopUp() {
    String url =
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/big_buck_bunny_1080p.mp4';

    showDialog(
      context: contextFromParent,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.only(
            top: 10.0,
          ),
          title: const TextAtom(
            'Open URL',
            style: TextStyle(fontSize: 24.0),
          ),
          content: SizedBox(
            height: 400,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: url,
                      onChanged: (textInUrl) {
                        url = textInUrl;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter URL here',
                        labelText: 'URL',
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        onOpenUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        // fixedSize: Size(250, 50),
                      ),
                      child: const TextAtom(
                        "Submit",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
