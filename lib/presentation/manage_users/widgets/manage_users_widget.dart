import 'package:cybear_jinni/application/manage_users/manage_users_bloc.dart';
import 'package:cybear_jinni/presentation/manage_users/widgets/error_user_card_widget.dart';
import 'package:cybear_jinni/presentation/manage_users/widgets/user_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class ManageUsersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return BlocBuilder<ManageUsersBloc, ManageUsersState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          inProgress: (state) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final user = state.users[index];
                if (user.failureOption.isSome()) {
                  return ErrorUserCard(user: user);
                } else {
                  return UserCard(user: user);
                }
              },
              itemCount: state.users.size,
            );
          },
          loadFailure: (state) {
            return const Text('Load Failure');
          },
          addSuccess: (state) {
            return const Text('Add Success');
          },
          deleteFailure: (state) {
            return const Text('Delete Failure');
          },
          deleteSuccess: (state) {
            return const Text('Delete Success');
          },
          error: (state) {
            return const Text('Error');
          },
        );
      },
    );
  }
}
