import 'package:cybear_jinni/domain/objects/enums.dart';
import 'package:cybear_jinni/domain/objects/smart_device/smart_device_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Block of one scene
class SceneBlockWidget extends StatelessWidget {
  const SceneBlockWidget(
      this.sceneName, this.smartDevicesWithWish, this._elementIndex);

  /// Create colors automatically from dart color list
  static final List<MaterialColor> colorList = Colors.primaries;

  /// Map of smart devices with list of wishes for this scene to execute
  final Map<SmartDeviceObject, List<WishEnum>> smartDevicesWithWish;

  /// Name of the scene to be displayed
  final String sceneName;
  final int _elementIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: RaisedButton(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        color: colorList[_elementIndex],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Theme.of(context).textTheme.bodyText1.color, width: 0.6)),
        onPressed: () {
          smartDevicesWithWish
              .forEach((SmartDeviceObject key, List<WishEnum> value) {
            for (final WishEnum wishEnumForSmartDevice in value) {
              key.executeWish(wishEnumForSmartDevice);
            }
          });
        },
        highlightColor: Theme.of(context).textTheme.bodyText1.color,
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
              color: Theme.of(context).textTheme.bodyText1.color,
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
    );
  }
}
