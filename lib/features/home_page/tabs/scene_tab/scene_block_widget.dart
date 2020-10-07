import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SceneBlockWidget extends StatelessWidget {
  SceneBlockWidget(this._element, this._elementIndex);

  static final List<MaterialColor> colorList = Colors.primaries;

  final String _element;
  final int _elementIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(2, 0, 2, 16),
      child: RaisedButton(
        color: colorList[_elementIndex],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Text(
          _element,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ),
      ),
    );
  }
}
