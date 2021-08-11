import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Block of one scene
class SceneBlockWidget extends StatelessWidget {
  const SceneBlockWidget(
    this.sceneName,
    this.smartDevicesWithWish,
    this._elementIndex,
  );

  /// Create colors automatically from dart color list
  static final List<MaterialColor> colorList = Colors.primaries;

  /// Map of smart devices with list of wishes for this scene to execute
  final Map<GenericLightDE, List<DeviceActions>> smartDevicesWithWish;

  /// Name of the scene to be displayed
  final String sceneName;
  final int _elementIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: InkWell(
        highlightColor: Theme.of(context).textTheme.bodyText1!.color,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              colorList[_elementIndex],
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(5),
            ),
            side: MaterialStateProperty.all(
              BorderSide.lerp(
                  BorderSide(
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      width: 0.6),
                  BorderSide(
                      color: (Theme.of(context).textTheme.bodyText1!.color)!,
                      width: 0.6),
                  30),
            ),
          ),
          onPressed: () {
            smartDevicesWithWish
                .forEach((GenericLightDE key, List<DeviceActions> value) {
              // for (final DeviceActions deviceActionForSmartDevice in value) {
              //   key.executeWish(deviceActionForSmartDevice);
              // }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black54,
            ),
            alignment: Alignment.center,
            child: Text(
              sceneName,
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
              textAlign: TextAlign.center,
            ),
            // Text(
            //   _element,
            //   style: const TextStyle(fontSize: 27),
            //   textAlign: TextAlign.center,
            // ),
          ),
        ),
      ),
    );
  }
}
