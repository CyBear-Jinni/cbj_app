import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlindsInTheRoom extends StatelessWidget {
  const BlindsInTheRoom({this.blindsInRoom, this.roomColorGradiant});

  final List<DeviceEntity?>? blindsInRoom;
  final List<Color>? roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(RoomsBlindsRoute(
            showDevicesOnlyFromRoomId: blindsInRoom![0]!.roomId!.getOrCrash(),
            roomColorGradiant: roomColorGradiant));
      },
      child: Container(
        color: Colors.black.withOpacity(0.03),
        margin: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('')),
                const Expanded(
                  child: CircleAvatar(
                    child: FaIcon(
                      FontAwesomeIcons.alignJustify,
                      color: Colors.grey,
                    ),
                  ),
                ),
                if (blindsInRoom!.length > 1)
                  Expanded(
                    child: Container(
                      height: 55,
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 28,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color!
                                  .withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          blindsInRoom!.length.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                      ),
                    ),
                  )
                else
                  const Expanded(child: Text('')),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (blindsInRoom!.length == 1)
              Text(
                blindsInRoom![0]!.defaultName!.getOrCrash()!,
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color),
              )
            else
              Text(
                'Room Name blinds',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            const SizedBox(
              height: 10,
            ),
            BlocConsumer<BlindsActorBloc, BlindsActorState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.grey.withOpacity(0.6)),
                          side: MaterialStateProperty.all(
                            const BorderSide(width: 0.2),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(0)),
                        ),
                        onPressed: () {
                          context.read<BlindsActorBloc>().add(
                              BlindsActorEvent.moveDownAllBlinds(
                                  extractDevicesId(), context));
                        },
                        child: FaIcon(
                          FontAwesomeIcons.chevronDown,
                          color: Theme.of(context).textTheme.bodyText2!.color,
                        ),
                      ),
                      Text(
                        '·',
                        style: TextStyle(
                            fontSize: 14,
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.grey.withOpacity(0.6)),
                          side: MaterialStateProperty.all(
                            const BorderSide(width: 0.2),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(0)),
                        ),
                        onPressed: () {
                          context.read<BlindsActorBloc>().add(
                              BlindsActorEvent.moveUpAllBlinds(
                                  extractDevicesId(), context));
                        },
                        child: FaIcon(
                          FontAwesomeIcons.chevronUp,
                          color: Theme.of(context).textTheme.bodyText2!.color,
                        ),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    blindsInRoom!.forEach((element) {
      devicesIdList.add(element!.id!.getOrCrash()!);
    });
    return devicesIdList;
  }
}
