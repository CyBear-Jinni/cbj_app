part of 'manage_wifi_bloc.dart';

@freezed
class ManageWifiEvent with _$ManageWifiEvent {
  factory ManageWifiEvent.connectToWiFi() = ConnectToWifi;

  factory ManageWifiEvent.scanForWiFiNetworks() = ScanForWiFiNetworks;

  factory ManageWifiEvent.wifiSsidChanged(String wifiSsidStr) = WifiSsidChanged;

  factory ManageWifiEvent.wifiPassChanged(String wifiPassStr) = WifiPassChanged;

  factory ManageWifiEvent.initialized() = Initialized;
}
