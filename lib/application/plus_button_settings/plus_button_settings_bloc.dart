import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plus_button_settings_bloc.freezed.dart';
part 'plus_button_settings_event.dart';
part 'plus_button_settings_state.dart';

@injectable
class PlusButtonSettingsBloc
    extends Bloc<PlusButtonSettingsEvent, PlusButtonSettingsState> {
  PlusButtonSettingsBloc() : super(PlusButtonSettingsState.initial()) {
    on<Initialized>(_initialized);

    on<Logout>(_logout);
  }

  late BuildContext context;

  Future<void> _initialized(
    Initialized event,
    Emitter<PlusButtonSettingsState> emit,
  ) async {
    context = event.context;
  }

  Future<void> _logout(
    Logout event,
    Emitter<PlusButtonSettingsState> emit,
  ) async {
    emit(PlusButtonSettingsState.loadInProgress());
    await IHubConnectionRepository.instance.closeConnection();

    context.router.replace(const ConnectToHubRoute());
  }
}
