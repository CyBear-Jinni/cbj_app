import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/hub/hub_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'more_connections_options_bloc.freezed.dart';
part 'more_connections_options_event.dart';
part 'more_connections_options_state.dart';

@injectable
class MoreConnectionsOptionsBloc
    extends Bloc<MoreConnectionsOptionsEvent, MoreConnectionsOptionsState> {
  MoreConnectionsOptionsBloc() : super(MoreConnectionsOptionsState.initial()) {
    on<InitialEvent>(_initialEvent);
    on<ConnectToRemotePipes>(_connectToRemotePipes);
    on<ConnectInDemoMode>(_connectInDemoMode);
  }

  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  late BuildContext context;

  Future<void> _initialEvent(
    InitialEvent event,
    Emitter<MoreConnectionsOptionsState> emit,
  ) async {
    context = event.context;
  }

  Future<void> _connectToRemotePipes(
    ConnectToRemotePipes event,
    Emitter<MoreConnectionsOptionsState> emit,
  ) async {}

  Future<void> _connectInDemoMode(
    ConnectInDemoMode event,
    Emitter<MoreConnectionsOptionsState> emit,
  ) async {
    context.router.replace(const HomeRoute());
    IHubConnectionRepository.instance.connectWithHub(demoMod: true);
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();

    return super.close();
  }
}
