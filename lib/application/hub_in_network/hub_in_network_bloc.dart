import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/utils.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/infrastructure/phone_hub/phone_hub.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'hub_in_network_bloc.freezed.dart';
part 'hub_in_network_event.dart';
part 'hub_in_network_state.dart';

@injectable
class HubInNetworkBloc extends Bloc<HubInNetworkEvent, HubInNetworkState> {
  HubInNetworkBloc() : super(HubInNetworkState.initial()) {
    on<InitialEvent>(_initialEvent);
    on<SearchHubInNetwork>(_searchHubInNetwork);
    on<OpenSmartCameraPage>(_openSmartCameraPage);
    on<SearchHubUsingAnyIpOnTheNetwork>(_searchHubUsingAnyIpOnTheNetwork);
    on<IsHubIpCheckBoxChangedState>(_isHubIpCheckBoxChangedState);
  }

  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  BuildContext? context;
  static bool loading = false;

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
    loading = true;
    emit(const HubInNetworkState.loadInProgress());
    emit(
      await (await IHubConnectionRepository.instance.searchForHub()).fold(
          (l) async {
        final PhoneHub phoneHub = PhoneHub();

        final Map<String, DeviceEntityAbstract> smartDevices =
            await phoneHub.getAllDevices;
        if (smartDevices.isEmpty) {
          return HubInNetworkState.loadFailure(l);
        }
        await IHubConnectionRepository.instance.closeConnection();
        phoneHub.startListen();
        logger.i('All Devices  smartDevices $smartDevices');
        context?.router.replace(const HomeRoute());
        return const HubInNetworkState.loadSuccess();
      }, (r) {
        context?.router.replace(const HomeRoute());
        return const HubInNetworkState.loadSuccess();
      }),
    );
    loading = false;
  }

  Future<void> _searchHubUsingAnyIpOnTheNetwork(
    SearchHubUsingAnyIpOnTheNetwork event,
    Emitter<HubInNetworkState> emit,
  ) async {
    emit(const HubInNetworkState.loadInProgress());
    emit(
      (await IHubConnectionRepository.instance.searchForHub(
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

  Future<void> _openSmartCameraPage(
    OpenSmartCameraPage event,
    Emitter<HubInNetworkState> emit,
  ) async {
    if (loading) {
      Fluttertoast.showToast(
        msg: 'Wait until search completes',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.blueGrey,
        textColor: Theme.of(event.context).textTheme.bodyLarge!.color,
        fontSize: 16.0,
      );
      return;
    }
    await IHubConnectionRepository.instance.closeConnection();

    event.context.router.push(const SmartCameraContainerRoute());
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
