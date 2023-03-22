import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'hub_in_network_bloc.freezed.dart';
part 'hub_in_network_event.dart';
part 'hub_in_network_state.dart';

@injectable
class HubInNetworkBloc extends Bloc<HubInNetworkEvent, HubInNetworkState> {
  HubInNetworkBloc(this._hubConnectionRepository)
      : super(HubInNetworkState.initial()) {
    on<InitialEvent>(_initialEvent);
    on<SearchHubInNetwork>(_searchHubInNetwork);
    on<SearchHubUsingAnyIpOnTheNetwork>(_searchHubUsingAnyIpOnTheNetwork);
    on<IsHubIpCheckBoxChangedState>(_isHubIpCheckBoxChangedState);
  }

  final IHubConnectionRepository _hubConnectionRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  BuildContext? context;

  Future<void> _initialEvent(
    InitialEvent event,
    Emitter<HubInNetworkState> emit,
  ) async {
    context = event.context;
    add(const HubInNetworkEvent.searchHubInNetwork());
  }

  Future<void> _searchHubInNetwork(
    SearchHubInNetwork event,
    Emitter<HubInNetworkState> emit,
  ) async {
    emit(const HubInNetworkState.loadInProgress());
    emit(
      (await _hubConnectionRepository.searchForHub())
          .fold((l) => HubInNetworkState.loadFailure(l), (r) {
        context?.router.replace(const HomeRoute());
        return const HubInNetworkState.loadSuccess();
      }),
    );
  }

  Future<void> _searchHubUsingAnyIpOnTheNetwork(
    SearchHubUsingAnyIpOnTheNetwork event,
    Emitter<HubInNetworkState> emit,
  ) async {
    emit(const HubInNetworkState.loadInProgress());
    emit(
      (await _hubConnectionRepository.searchForHub(
        deviceIpOnTheNetwork: event.ipOnTheNetwork,
        isThatTheIpOfTheHub: event.isHubIp,
      ))
          .fold((l) => HubInNetworkState.loadFailure(l), (r) {
        context?.router.replace(const HomeRoute());
        return const HubInNetworkState.loadSuccess();
      }),
    );
  }

  Future<void> _isHubIpCheckBoxChangedState(
    IsHubIpCheckBoxChangedState event,
    Emitter<HubInNetworkState> emit,
  ) async {
    emit(HubInNetworkState.tryIpManually(event.ipOnTheNetwork, event.isHubIp));
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
