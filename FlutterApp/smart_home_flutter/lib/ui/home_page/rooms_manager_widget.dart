import 'package:flutter/material.dart';
import 'package:smart_home_flutter/objects/interface_darta/cloud_interface_data.dart';
import 'package:smart_home_flutter/ui/home_page/smart_device_widget.dart';

//  This class show all the rooms in the house and quick access to the light switch from the rom_widget page
class RoomsManagerWidget extends StatelessWidget {
  Widget _buildItemList(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: FlatButton(
              onPressed: () => Navigator.pushNamed(
                    context,
                    '/roomRage/' + index.toString(),
                  ),
              color: Colors.transparent,
              child: Text(
                rooms[index].getRoomName(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.body1.color,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 170,
                child: SmartDevicePage(rooms[index].getDevices()[0]),
              ),
              Container(
                width: 170,
                child: SmartDevicePage(rooms[index].getDevices()[1]),
              )
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
