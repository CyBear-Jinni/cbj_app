import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/scenes/widgets/folder_of_scenes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScenesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: BacgroundGradient.getBacground(context),
        ),
        child: BlocProvider(
          create: (context) => getIt<FolderOfScenesBloc>()
            ..add(const FolderOfScenesEvent.initialized()),
          child: FolderOfScenesWidget(),
        ),
      ),
    );
  }
}
