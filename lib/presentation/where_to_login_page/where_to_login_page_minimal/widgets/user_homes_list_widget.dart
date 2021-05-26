import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cybear_jinni/application/user_homes_list/user_homes_list_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_minimal/widgets/error_home_card_widget.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page_minimal/widgets/home_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserHomesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return BlocBuilder<UserHomesListBloc, UserHomesListState>(
      builder: (context, state) {
        return Expanded(
          child: state.map(
            initial: (_) => Container(),
            loadInProgress: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final homeUser = state.homes[index];
                  if (homeUser.failureOption.isSome()) {
                    return ErrorHomeCard(home: homeUser);
                  } else {
                    return BlocProvider(
                      create: (context) => getIt<UserHomesListBloc>(),
                      child: HomeCardWidget(home: homeUser),
                    );
                  }
                },
                itemCount: state.homes.size,
              );
            },
            loadFailure: (state) {
              return const Text('Load Failure');
            },
            error: (state) {
              return const Text('Error');
            },
            enterHome: (e) {
              return const Text('Entering Home');
            },
            loadFailureEnteringHome: (f) {
              FlushbarHelper.createError(
                message: "Can't enter this home",
              );
              return const Text('Failure');
            },
          ),
        );
      },
    );
  }
}
