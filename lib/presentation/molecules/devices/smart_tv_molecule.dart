import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_tv_entity/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
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
  Future _stopState() async {
    FlushbarHelper.createLoading(
      message: 'Stop smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance
        .stopStateDevices(devicesId: [widget.entity.getDeviceId()]);
  }

  Future _playState() async {
    FlushbarHelper.createLoading(
      message: 'Play smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance
        .playStateDevices(devicesId: [widget.entity.getDeviceId()]);
  }

  Future _queuePrevEvent(List<String> smartTvId) async {
    FlushbarHelper.createLoading(
      message: 'Change volume smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.queuePrevStateDevices(devicesId: smartTvId);
  }

  Future _queueNextEvent(List<String> smartTvId) async {
    FlushbarHelper.createLoading(
      message: 'Change volume smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.queueNextStateDevices(devicesId: smartTvId);
  }

  void closeEvent(BuildContext context) {
    final String deviceId = widget.entity.getDeviceId();

    FlushbarHelper.createLoading(
      message: 'Close current app on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.closeStateDevices(devicesId: [deviceId]);
  }

  void queueNextEvent(BuildContext context) {
    final String deviceId = widget.entity.getDeviceId();
    _queueNextEvent([deviceId]);
  }

  void queuePrevEvent(BuildContext context) {
    final String deviceId = widget.entity.getDeviceId();
    _queuePrevEvent([deviceId]);
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
                OpenUrlPopUp(
                  context,
                  widget.entity,
                );
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
              onPressed: _stopState,
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
              onPressed: () {
                closeEvent(context);
              },
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
              onPressed: _playState,
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
  OpenUrlPopUp(this.contextFromParent, this._deviceEntity) {
    openUrlPopUp();
  }

  BuildContext contextFromParent;
  final GenericSmartTvDE _deviceEntity;

  void openUrlPopUp() {
    String url = '';

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
            "Open URL",
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
                    child: TextField(
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
                        playVideo(contextFromParent, url);
                        context.router.pop();
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

  void playVideo(BuildContext context, String url) {
    final String deviceId = _deviceEntity.getDeviceId();
    FlushbarHelper.createLoading(
      message: 'Open url on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);
    IDeviceRepository.instance.openUrlOnDevices(
      devicesId: [deviceId],
      url: url,
    );
  }
}
