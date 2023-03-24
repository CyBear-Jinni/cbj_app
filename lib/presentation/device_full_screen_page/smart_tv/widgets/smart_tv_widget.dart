import 'package:cybear_jinni/application/smart_tv/smart_tv_actor/smart_tv_actor_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/smart_tv/widgets/open_url_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartTvWidget extends StatelessWidget {
  const SmartTvWidget(this._deviceEntity);

  final GenericSmartTvDE? _deviceEntity;

  void stopState(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.stopEvent(
            [deviceId],
            context,
          ),
        );
  }

  // void pauseEvent(BuildContext context) {
  //   final String deviceId = _deviceEntity!.getDeviceId();
  //   context.read<SmartTvActorBloc>().add(
  //         SmartTvActorEvent.pauseEvent(
  //           [deviceId],
  //           context,
  //         ),
  //       );
  // }
  void closeEvent(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.closeEvent(
            [deviceId],
            context,
          ),
        );
  }

  void playEvent(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.playEvent(
            [deviceId],
            context,
          ),
        );
  }

  void queueNextEvent(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.queueNextEvent(
            [deviceId],
            context,
          ),
        );
  }

  void queuePrevEvent(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.queuePrevEvent(
            [deviceId],
            context,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SmartTvActorBloc, SmartTvActorState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                      _deviceEntity,
                    );
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.video,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      'Open Video',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
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
                  onPressed: () {
                    stopState(context);
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.xmark,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
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
                    child: Text(
                      'Pause',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
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
                    playEvent(context);
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.play,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    child: Text(
                      'Play',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: 16,
                      ),
                    ).tr(),
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
            //         child: Text(
            //           'Queue Prev',
            //           style: TextStyle(
            //             color: Theme.of(context).textTheme.bodyLarge!.color,
            //             fontSize: 16,
            //           ),
            //         ).tr(),
            //       ),
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
            //         child: Text(
            //           'Queue Next',
            //           style: TextStyle(
            //             color: Theme.of(context).textTheme.bodyLarge!.color,
            //             fontSize: 16,
            //           ),
            //         ).tr(),
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        );
      },
    );
  }
}
