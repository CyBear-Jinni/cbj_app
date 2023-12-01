import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_tv/widgets/open_url_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartTvWidget extends StatefulWidget {
  const SmartTvWidget(this._deviceEntity);

  final GenericSmartTvDE _deviceEntity;

  @override
  State<SmartTvWidget> createState() => _SmartTvWidgetState();
}

class _SmartTvWidgetState extends State<SmartTvWidget> {
  Future _stopState() async {
    FlushbarHelper.createLoading(
      message: 'Stop smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance
        .stopStateDevices(devicesId: [widget._deviceEntity.getDeviceId()]);
  }

  Future _playState() async {
    FlushbarHelper.createLoading(
      message: 'Play smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance
        .playStateDevices(devicesId: [widget._deviceEntity.getDeviceId()]);
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
    final String deviceId = widget._deviceEntity.getDeviceId();

    FlushbarHelper.createLoading(
      message: 'Close current app on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.closeStateDevices(devicesId: [deviceId]);
  }

  void queueNextEvent(BuildContext context) {
    final String deviceId = widget._deviceEntity.getDeviceId();
    _queueNextEvent([deviceId]);
  }

  void queuePrevEvent(BuildContext context) {
    final String deviceId = widget._deviceEntity.getDeviceId();
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
                  widget._deviceEntity,
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
