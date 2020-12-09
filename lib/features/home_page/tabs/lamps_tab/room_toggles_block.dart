import 'package:cybear_jinni/features/home_page/smart_device_widget.dart';
import 'package:cybear_jinni/objects/smart_device/smart_room_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomTogglesBlock extends StatelessWidget {
  const RoomTogglesBlock(this._smartRoomObject);

  final SmartRoomObject _smartRoomObject;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery
        .of(context)
        .size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return Container(
      margin: EdgeInsets.only(bottom: screenSize.height * 0.02),
      padding: const EdgeInsets.all(3),

      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: _smartRoomObject.grediantColor,
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft
        ),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: [BoxShadow(
          color: Colors.yellow.withOpacity(0.4),
          blurRadius: 8,
          spreadRadius: 2,
          offset: const Offset(2, 2),
        ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(2),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                onPressed: () =>
                    Navigator.pushNamed(
                      context,
                      '/roomPage/${_smartRoomObject.getRoomName()}',
                    ),
                color: Colors.transparent,
                child: Text(
                  _smartRoomObject.getRoomName(),
                  style: TextStyle(
                    color: Theme
                        .of(context)
                        .textTheme
                        .bodyText1
                        .color,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: sizeBoxWidth + 30,
                  child: SmartDevicePage(_smartRoomObject.getLights()[0]),
                ),
                _smartRoomObject
                    .getLights()
                    .length > 1?
                  SizedBox(
                    width: sizeBoxWidth + 30,
                    child: SmartDevicePage(_smartRoomObject.getLights()[1]),
                  ): SizedBox(width: 110,)
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,),
            if(_smartRoomObject
                .getLights()
                .length > 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: sizeBoxWidth + 30,
                    child: SmartDevicePage(_smartRoomObject.getLights()[2]),
                  ),
                  _smartRoomObject
                      .getLights()
                      .length > 3?
                    SizedBox(
                      width: sizeBoxWidth + 30,
                      child: SmartDevicePage(_smartRoomObject.getLights()[3]),
                    ): SizedBox(width: 110,)
                ],
              ),
          ],
        ),
      ),
    );
  }
}
