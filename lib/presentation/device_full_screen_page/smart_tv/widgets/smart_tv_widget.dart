import 'package:cybear_jinni/application/smart_tv/smart_tv_actor/smart_tv_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SmartTvWidget extends StatelessWidget {
  const SmartTvWidget(this._deviceEntity);

  final GenericSmartTvDE? _deviceEntity;

  void playAVideo(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.openUrl(
            [deviceId],
            context,
          ),
        );
  }

  void pausePlayState(BuildContext context) {
    final String deviceId = _deviceEntity!.getDeviceId();
    context.read<SmartTvActorBloc>().add(
          SmartTvActorEvent.pausePlayState(
            [deviceId],
            context,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.15;

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
                    playAVideo(context);
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.video,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    child: Text(
                      'Play a Video',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
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
                    pausePlayState(context);
                  },
                  child: Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.pause,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    child: Text(
                      'Play/Pause',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
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
          ],
        );
      },
    );
  }
}
