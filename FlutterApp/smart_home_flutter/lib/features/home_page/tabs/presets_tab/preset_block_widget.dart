import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PresetBlockWidget extends StatelessWidget {
  static final List<MaterialColor> colorList = Colors.primaries;

  String _element;
  int _elementIndex;

  PresetBlockWidget(this._element, this._elementIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 0, 2, 16),
      child: RaisedButton(
        color: colorList[_elementIndex],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          _element,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Theme
                .of(context)
                .textTheme
                .bodyText1
                .color,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
