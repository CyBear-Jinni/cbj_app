import 'package:cybearjinni/features/home_page/smart_device_widget.dart';
import 'package:cybearjinni/objects/smart_device/smart_room_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomTogglesBlock extends StatelessWidget {
  final SmartRoomObject _smartRoomObject;

  RoomTogglesBlock(this._smartRoomObject);

  @override
  Widget build(BuildContext context) {
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
                '/roomRage/' + _smartRoomObject.getRoomName(),
              ),
              color: Colors.transparent,
              child: Text(
                _smartRoomObject.getRoomName(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
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
                child: SmartDevicePage(_smartRoomObject.getLights()[0]),
              ),
              Container(
                width: 170,
                child: SmartDevicePage(_smartRoomObject.getLights()[1]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
