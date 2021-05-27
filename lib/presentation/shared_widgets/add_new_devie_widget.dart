import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wifi_info_flutter/wifi_info_flutter.dart';

class AddNewDeviceWidgetPopup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddNewDeviceWidgetPopup();
  }
}

class _AddNewDeviceWidgetPopup extends State<AddNewDeviceWidgetPopup> {
  static String? _ip;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Future<String?> getMyWifiIp() async {
    return WifiInfo().getWifiIP();
  }

//  await (Connectivity().getWifiName());wifi network
  Widget addNewDeviceWidget = ListBody(
    children: <Widget>[
      FutureBuilder<String?>(
        future: getMyWifiIp(),
        builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return TextFormField(
              autofocus: true,
              initialValue:
                  snapshot.data?.substring(0, snapshot.data!.length - 1),
              onSaved: (String? ip) => _ip = ip,
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'IP_is_required'.tr();
                }
                if (SmartDeviceObject.legitIp(value)) {
                  return 'IP_syntax_is_incorrect'.tr();
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'IP'.tr(),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
        title: const Text('Add_Smart_Device').tr(),
        content: SingleChildScrollView(
          child: addNewDeviceWidget,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel').tr(),
          ),
          TextButton(
            onPressed: () {
              _formKey.currentState?.save();
//              rooms[0].getLights()[0] =
//                  SmartDeviceObject(_deviceType, _deviceName, _ip, _roomName);
            },
            child: const Text('Add').tr(),
          ),
        ],
      ),
    );
  }
}

class DropDownMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropDownMenu();
  }
}

class _DropDownMenu extends State<DropDownMenu> {
  String dropdownValue = DeviceTypes.light.toString().tr();

  String _deviceTypeToString(DeviceTypes deviceType) {
    return EnumHelper.dTToString(deviceType);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String?>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
//            },'Light', 'Dynamic light', 'Blinds', 'Four'
      items: <String>[
        _deviceTypeToString(DeviceTypes.light),
        _deviceTypeToString(DeviceTypes.blinds),
        _deviceTypeToString(DeviceTypes.boiler),
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
