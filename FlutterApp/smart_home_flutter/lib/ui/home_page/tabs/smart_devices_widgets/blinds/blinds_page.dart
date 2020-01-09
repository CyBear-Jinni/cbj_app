import 'package:flutter/material.dart';

import 'blinds_manager_widget.dart';


class BlindsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
          ]),
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
              'Blinds Page',
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.body1.color,
                  decoration: TextDecoration.underline),
            ),
            BlindsManagerWidget(),
          ],
        ),
      ),
    );
  }
}
