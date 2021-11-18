import 'package:cybear_jinni/application/software_info/software_info_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class SoftwareInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return BlocBuilder<SoftwareInfoBloc, SoftwareInfoState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Versions number will be shown here'),
            ],
          ),
        );
      },
    );
  }
}
