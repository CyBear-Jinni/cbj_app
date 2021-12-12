import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_network/i_manage_network_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'manage_wifi_bloc.freezed.dart';
part 'manage_wifi_event.dart';
part 'manage_wifi_state.dart';

@injectable
class ManageWifiBloc extends Bloc<ManageWifiEvent, ManageWifiState> {
  ManageWifiBloc(this._manageWiFiRepository)
      : super(ManageWifiState.initial()) {
    on<Initialized>(_initialized);
    on<ScanForWiFiNetworks>(_scanForWiFiNetworks);
    on<ConnectToWifi>(_connectToWiFi);
    on<WifiSsidChanged>(_wifiSsidChanged);
    on<WifiPassChanged>(_wifiPassChanged);
  }

  final IManageNetworkRepository _manageWiFiRepository;

  ManageWiFiName? wifiName;
  ManageWiFiPass? wifiPassword;

  Future<void> _initialized(
    Initialized event,
    Emitter<ManageWifiState> emit,
  ) async {
    emit(ManageWifiState.loading());

    final Either<HomeUserFailures, String?> doesWiFiEnabled =
        await _manageWiFiRepository.doesWiFiEnabled();

    emit(
      doesWiFiEnabled.fold((f) => ManageWifiState.wifiIsDisabled(), (r) {
        wifiName = r != null ? ManageWiFiName(r) : null;
        return ManageWifiState.wifiIsEnabled(r);
      }),
    );
  }

  Future<void> _scanForWiFiNetworks(
    ScanForWiFiNetworks event,
    Emitter<ManageWifiState> emit,
  ) async {
    emit(ManageWifiState.loading());
    // _manageWiFiRepository.scanWiFiNetworks();
  }

  Future<void> _connectToWiFi(
    ConnectToWifi event,
    Emitter<ManageWifiState> emit,
  ) async {
    emit(ManageWifiState.loading());

    final ManageNetworkEntity manageWiFiEntity = ManageNetworkEntity(
      name: wifiName,
      pass: wifiPassword,
    );

    final Either<HomeUserFailures, Unit> doesWiFiEnabled =
        await _manageWiFiRepository.connectToWiFi(manageWiFiEntity);

    emit(
      doesWiFiEnabled.fold(
        (f) => ManageWifiState.error(),
        (r) => ManageWifiState.loaded(),
      ),
    );
  }

  Future<void> _wifiSsidChanged(
    WifiSsidChanged event,
    Emitter<ManageWifiState> emit,
  ) async {
    wifiName = ManageWiFiName(event.wifiSsidStr);
  }

  Future<void> _wifiPassChanged(
    WifiPassChanged event,
    Emitter<ManageWifiState> emit,
  ) async {
    wifiPassword = ManageWiFiPass(event.wifiPassStr);
  }
}
