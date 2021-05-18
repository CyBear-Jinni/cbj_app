import 'package:cybear_jinni/infrastructure/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/smart_blind_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

///  This class show all the rooms in the house and quick access to the light switch from the rom_widget page
class BlindsManagerWidget extends StatelessWidget {
  Widget _buildItemList(BuildContext context, int index) {
    if (rooms[index].blindsInTheRoom == null) return null;
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: FlatButton(
              onPressed: () => Fluttertoast.showToast(
                  msg: 'Move_to_blinds_full_settings_page'.tr(),
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.green,
                  textColor: Theme.of(context).textTheme.bodyText1.color,
                  fontSize: 16.0),
              color: Colors.transparent,
              child: Text(
                rooms[index].getRoomName(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SmartBlindPage(smartBlindsObject: rooms[index].getBlinds()[0]),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: _buildItemList,
        itemCount: rooms.length,
      ),
    );
//    return DevicesList(rooms[0]);
  }
}
