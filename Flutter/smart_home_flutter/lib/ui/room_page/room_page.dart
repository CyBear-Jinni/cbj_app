import 'package:flutter/material.dart';
import 'package:smart_home_flutter/ui/room_page/room_widget.dart';

class RoomPage extends StatelessWidget {
  String roomName;

  RoomPage(this.roomName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Theme.of(context).textTheme.body1.color),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Text(
              roomName,
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.body1.color,
                  decoration: TextDecoration.underline),
            ),
            RoomWidget(
              [
                {'title': 'Smart device 1', 'price': 12},
                {'title': 'Smart device 2', 'price': 15},
                {'title': 'Smart device 3', 'price': 16},
                {'title': 'Smart device 4', 'price': 6},
                {'title': 'Smart device 5', 'price': 14},
                {'title': 'Smart device 6', 'price': 17},
                {'title': 'Smart device 7', 'price': 999},
                {'title': 'Smart device 8', 'price': 233},
                {'title': 'Smart device 9', 'price': 24},
              ],
              () {},
              () {},
            ),
          ],
        ),
      ),
    );
  }
}
