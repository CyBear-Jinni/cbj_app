import 'package:cybear_jinni/features/home_page/smart_device_widget.dart';
import 'package:cybear_jinni/objects/enums.dart';
import 'package:cybear_jinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_localization/easy_localization.dart';


/// Show bar of device type with toggle switch for light
class SmartDeviceTypeAndToggleBar extends StatelessWidget {

  SmartDeviceTypeAndToggleBar(this._smartDeviceObject);

  SmartDeviceObject _smartDeviceObject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if(_smartDeviceObject.deviceType ==
            DeviceType.Light)
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:
            const CircleAvatar(
              radius: 16,
              child: Icon(
                  FontAwesomeIcons.solidLightbulb),
            ),
          ),
        if(_smartDeviceObject.deviceType ==
            DeviceType.Blinds)
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:
            const CircleAvatar(
              radius: 16,
              child: Icon(
                  FontAwesomeIcons.satelliteDish),
            ),
          ),
        const Text(
          'Device_type:_',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,
              color: Colors.white,
              backgroundColor: Colors.blueGrey
//                color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ).tr(args: <String>[EnumHelper.dTToString(
            _smartDeviceObject.deviceType)
        ]),
        if (_smartDeviceObject.deviceType ==
            DeviceType.Light) SizedBox(
          width: 100,
          child: SmartDevicePage(
              _smartDeviceObject), // The actual render of the device
        ) else
          Container(),
      ],
    );
  }
}