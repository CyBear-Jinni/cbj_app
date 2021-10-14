import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeDropDownMenu extends StatefulWidget {
  const TimeDropDownMenu(this.dropDownList, {this.defaultValue});

  final String? defaultValue;

  final List<String?>? dropDownList;

  @override
  _TimeDropDownMenuState createState() => _TimeDropDownMenuState();
}

class _TimeDropDownMenuState extends State<TimeDropDownMenu> {
  @override
  void initState() {
    super.initState();
    if (widget.defaultValue != null && widget.defaultValue!.isNotEmpty) {
      dropdownValue = widget.defaultValue!;
    } else {
      dropdownValue = widget.dropDownList!.first!;
    }
  }

  late String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      color: Colors.black45,
      padding: const EdgeInsets.all(5.0),
      child: DropdownButton<String>(
        value: dropdownValue,
        underline: Container(
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        dropdownColor: Colors.black54,
        items:
            widget.dropDownList!.map<DropdownMenuItem<String>>((String? value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value!,
              style: TextStyle(
                color: (Theme.of(context).textTheme.bodyText1!.color)!,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
