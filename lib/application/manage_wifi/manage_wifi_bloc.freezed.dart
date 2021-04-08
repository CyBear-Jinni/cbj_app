// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'manage_wifi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ManageWifiEventTearOff {
  const _$ManageWifiEventTearOff();

// ignore: unused_element
  ConnectToWifi connectToWiFi() {
    return ConnectToWifi();
  }

// ignore: unused_element
  ScanForWiFiNetworks scanForWiFiNetworks() {
    return ScanForWiFiNetworks();
  }

// ignore: unused_element
  WifiSsidChanged wifiSsidChanged(String wifiSsidStr) {
    return WifiSsidChanged(
      wifiSsidStr,
    );
  }

// ignore: unused_element
  WifiPassChanged wifiPassChanged(String wifiPassStr) {
    return WifiPassChanged(
      wifiPassStr,
    );
  }

// ignore: unused_element
  Initialized initialized() {
    return Initialized();
  }
}

/// @nodoc
// ignore: unused_element
const $ManageWifiEvent = _$ManageWifiEventTearOff();

/// @nodoc
mixin _$ManageWifiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectToWiFi(),
    @required TResult scanForWiFiNetworks(),
    @required TResult wifiSsidChanged(String wifiSsidStr),
    @required TResult wifiPassChanged(String wifiPassStr),
    @required TResult initialized(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectToWiFi(),
    TResult scanForWiFiNetworks(),
    TResult wifiSsidChanged(String wifiSsidStr),
    TResult wifiPassChanged(String wifiPassStr),
    TResult initialized(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectToWiFi(ConnectToWifi value),
    @required TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    @required TResult wifiSsidChanged(WifiSsidChanged value),
    @required TResult wifiPassChanged(WifiPassChanged value),
    @required TResult initialized(Initialized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectToWiFi(ConnectToWifi value),
    TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    TResult wifiSsidChanged(WifiSsidChanged value),
    TResult wifiPassChanged(WifiPassChanged value),
    TResult initialized(Initialized value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ManageWifiEventCopyWith<$Res> {
  factory $ManageWifiEventCopyWith(
          ManageWifiEvent value, $Res Function(ManageWifiEvent) then) =
      _$ManageWifiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManageWifiEventCopyWithImpl<$Res>
    implements $ManageWifiEventCopyWith<$Res> {
  _$ManageWifiEventCopyWithImpl(this._value, this._then);

  final ManageWifiEvent _value;
  // ignore: unused_field
  final $Res Function(ManageWifiEvent) _then;
}

/// @nodoc
abstract class $ConnectToWifiCopyWith<$Res> {
  factory $ConnectToWifiCopyWith(
          ConnectToWifi value, $Res Function(ConnectToWifi) then) =
      _$ConnectToWifiCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectToWifiCopyWithImpl<$Res>
    extends _$ManageWifiEventCopyWithImpl<$Res>
    implements $ConnectToWifiCopyWith<$Res> {
  _$ConnectToWifiCopyWithImpl(
      ConnectToWifi _value, $Res Function(ConnectToWifi) _then)
      : super(_value, (v) => _then(v as ConnectToWifi));

  @override
  ConnectToWifi get _value => super._value as ConnectToWifi;
}

/// @nodoc
class _$ConnectToWifi implements ConnectToWifi {
  _$ConnectToWifi();

  @override
  String toString() {
    return 'ManageWifiEvent.connectToWiFi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectToWifi);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectToWiFi(),
    @required TResult scanForWiFiNetworks(),
    @required TResult wifiSsidChanged(String wifiSsidStr),
    @required TResult wifiPassChanged(String wifiPassStr),
    @required TResult initialized(),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return connectToWiFi();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectToWiFi(),
    TResult scanForWiFiNetworks(),
    TResult wifiSsidChanged(String wifiSsidStr),
    TResult wifiPassChanged(String wifiPassStr),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectToWiFi != null) {
      return connectToWiFi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectToWiFi(ConnectToWifi value),
    @required TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    @required TResult wifiSsidChanged(WifiSsidChanged value),
    @required TResult wifiPassChanged(WifiPassChanged value),
    @required TResult initialized(Initialized value),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return connectToWiFi(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectToWiFi(ConnectToWifi value),
    TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    TResult wifiSsidChanged(WifiSsidChanged value),
    TResult wifiPassChanged(WifiPassChanged value),
    TResult initialized(Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectToWiFi != null) {
      return connectToWiFi(this);
    }
    return orElse();
  }
}

abstract class ConnectToWifi implements ManageWifiEvent {
  factory ConnectToWifi() = _$ConnectToWifi;
}

/// @nodoc
abstract class $ScanForWiFiNetworksCopyWith<$Res> {
  factory $ScanForWiFiNetworksCopyWith(
          ScanForWiFiNetworks value, $Res Function(ScanForWiFiNetworks) then) =
      _$ScanForWiFiNetworksCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScanForWiFiNetworksCopyWithImpl<$Res>
    extends _$ManageWifiEventCopyWithImpl<$Res>
    implements $ScanForWiFiNetworksCopyWith<$Res> {
  _$ScanForWiFiNetworksCopyWithImpl(
      ScanForWiFiNetworks _value, $Res Function(ScanForWiFiNetworks) _then)
      : super(_value, (v) => _then(v as ScanForWiFiNetworks));

  @override
  ScanForWiFiNetworks get _value => super._value as ScanForWiFiNetworks;
}

/// @nodoc
class _$ScanForWiFiNetworks implements ScanForWiFiNetworks {
  _$ScanForWiFiNetworks();

  @override
  String toString() {
    return 'ManageWifiEvent.scanForWiFiNetworks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScanForWiFiNetworks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectToWiFi(),
    @required TResult scanForWiFiNetworks(),
    @required TResult wifiSsidChanged(String wifiSsidStr),
    @required TResult wifiPassChanged(String wifiPassStr),
    @required TResult initialized(),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return scanForWiFiNetworks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectToWiFi(),
    TResult scanForWiFiNetworks(),
    TResult wifiSsidChanged(String wifiSsidStr),
    TResult wifiPassChanged(String wifiPassStr),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (scanForWiFiNetworks != null) {
      return scanForWiFiNetworks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectToWiFi(ConnectToWifi value),
    @required TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    @required TResult wifiSsidChanged(WifiSsidChanged value),
    @required TResult wifiPassChanged(WifiPassChanged value),
    @required TResult initialized(Initialized value),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return scanForWiFiNetworks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectToWiFi(ConnectToWifi value),
    TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    TResult wifiSsidChanged(WifiSsidChanged value),
    TResult wifiPassChanged(WifiPassChanged value),
    TResult initialized(Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (scanForWiFiNetworks != null) {
      return scanForWiFiNetworks(this);
    }
    return orElse();
  }
}

abstract class ScanForWiFiNetworks implements ManageWifiEvent {
  factory ScanForWiFiNetworks() = _$ScanForWiFiNetworks;
}

/// @nodoc
abstract class $WifiSsidChangedCopyWith<$Res> {
  factory $WifiSsidChangedCopyWith(
          WifiSsidChanged value, $Res Function(WifiSsidChanged) then) =
      _$WifiSsidChangedCopyWithImpl<$Res>;
  $Res call({String wifiSsidStr});
}

/// @nodoc
class _$WifiSsidChangedCopyWithImpl<$Res>
    extends _$ManageWifiEventCopyWithImpl<$Res>
    implements $WifiSsidChangedCopyWith<$Res> {
  _$WifiSsidChangedCopyWithImpl(
      WifiSsidChanged _value, $Res Function(WifiSsidChanged) _then)
      : super(_value, (v) => _then(v as WifiSsidChanged));

  @override
  WifiSsidChanged get _value => super._value as WifiSsidChanged;

  @override
  $Res call({
    Object wifiSsidStr = freezed,
  }) {
    return _then(WifiSsidChanged(
      wifiSsidStr == freezed ? _value.wifiSsidStr : wifiSsidStr as String,
    ));
  }
}

/// @nodoc
class _$WifiSsidChanged implements WifiSsidChanged {
  _$WifiSsidChanged(this.wifiSsidStr) : assert(wifiSsidStr != null);

  @override
  final String wifiSsidStr;

  @override
  String toString() {
    return 'ManageWifiEvent.wifiSsidChanged(wifiSsidStr: $wifiSsidStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WifiSsidChanged &&
            (identical(other.wifiSsidStr, wifiSsidStr) ||
                const DeepCollectionEquality()
                    .equals(other.wifiSsidStr, wifiSsidStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wifiSsidStr);

  @JsonKey(ignore: true)
  @override
  $WifiSsidChangedCopyWith<WifiSsidChanged> get copyWith =>
      _$WifiSsidChangedCopyWithImpl<WifiSsidChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectToWiFi(),
    @required TResult scanForWiFiNetworks(),
    @required TResult wifiSsidChanged(String wifiSsidStr),
    @required TResult wifiPassChanged(String wifiPassStr),
    @required TResult initialized(),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return wifiSsidChanged(wifiSsidStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectToWiFi(),
    TResult scanForWiFiNetworks(),
    TResult wifiSsidChanged(String wifiSsidStr),
    TResult wifiPassChanged(String wifiPassStr),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiSsidChanged != null) {
      return wifiSsidChanged(wifiSsidStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectToWiFi(ConnectToWifi value),
    @required TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    @required TResult wifiSsidChanged(WifiSsidChanged value),
    @required TResult wifiPassChanged(WifiPassChanged value),
    @required TResult initialized(Initialized value),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return wifiSsidChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectToWiFi(ConnectToWifi value),
    TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    TResult wifiSsidChanged(WifiSsidChanged value),
    TResult wifiPassChanged(WifiPassChanged value),
    TResult initialized(Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiSsidChanged != null) {
      return wifiSsidChanged(this);
    }
    return orElse();
  }
}

abstract class WifiSsidChanged implements ManageWifiEvent {
  factory WifiSsidChanged(String wifiSsidStr) = _$WifiSsidChanged;

  String get wifiSsidStr;
  @JsonKey(ignore: true)
  $WifiSsidChangedCopyWith<WifiSsidChanged> get copyWith;
}

/// @nodoc
abstract class $WifiPassChangedCopyWith<$Res> {
  factory $WifiPassChangedCopyWith(
          WifiPassChanged value, $Res Function(WifiPassChanged) then) =
      _$WifiPassChangedCopyWithImpl<$Res>;
  $Res call({String wifiPassStr});
}

/// @nodoc
class _$WifiPassChangedCopyWithImpl<$Res>
    extends _$ManageWifiEventCopyWithImpl<$Res>
    implements $WifiPassChangedCopyWith<$Res> {
  _$WifiPassChangedCopyWithImpl(
      WifiPassChanged _value, $Res Function(WifiPassChanged) _then)
      : super(_value, (v) => _then(v as WifiPassChanged));

  @override
  WifiPassChanged get _value => super._value as WifiPassChanged;

  @override
  $Res call({
    Object wifiPassStr = freezed,
  }) {
    return _then(WifiPassChanged(
      wifiPassStr == freezed ? _value.wifiPassStr : wifiPassStr as String,
    ));
  }
}

/// @nodoc
class _$WifiPassChanged implements WifiPassChanged {
  _$WifiPassChanged(this.wifiPassStr) : assert(wifiPassStr != null);

  @override
  final String wifiPassStr;

  @override
  String toString() {
    return 'ManageWifiEvent.wifiPassChanged(wifiPassStr: $wifiPassStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WifiPassChanged &&
            (identical(other.wifiPassStr, wifiPassStr) ||
                const DeepCollectionEquality()
                    .equals(other.wifiPassStr, wifiPassStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wifiPassStr);

  @JsonKey(ignore: true)
  @override
  $WifiPassChangedCopyWith<WifiPassChanged> get copyWith =>
      _$WifiPassChangedCopyWithImpl<WifiPassChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectToWiFi(),
    @required TResult scanForWiFiNetworks(),
    @required TResult wifiSsidChanged(String wifiSsidStr),
    @required TResult wifiPassChanged(String wifiPassStr),
    @required TResult initialized(),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return wifiPassChanged(wifiPassStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectToWiFi(),
    TResult scanForWiFiNetworks(),
    TResult wifiSsidChanged(String wifiSsidStr),
    TResult wifiPassChanged(String wifiPassStr),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiPassChanged != null) {
      return wifiPassChanged(wifiPassStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectToWiFi(ConnectToWifi value),
    @required TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    @required TResult wifiSsidChanged(WifiSsidChanged value),
    @required TResult wifiPassChanged(WifiPassChanged value),
    @required TResult initialized(Initialized value),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return wifiPassChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectToWiFi(ConnectToWifi value),
    TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    TResult wifiSsidChanged(WifiSsidChanged value),
    TResult wifiPassChanged(WifiPassChanged value),
    TResult initialized(Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiPassChanged != null) {
      return wifiPassChanged(this);
    }
    return orElse();
  }
}

abstract class WifiPassChanged implements ManageWifiEvent {
  factory WifiPassChanged(String wifiPassStr) = _$WifiPassChanged;

  String get wifiPassStr;
  @JsonKey(ignore: true)
  $WifiPassChangedCopyWith<WifiPassChanged> get copyWith;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ManageWifiEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc
class _$Initialized implements Initialized {
  _$Initialized();

  @override
  String toString() {
    return 'ManageWifiEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectToWiFi(),
    @required TResult scanForWiFiNetworks(),
    @required TResult wifiSsidChanged(String wifiSsidStr),
    @required TResult wifiPassChanged(String wifiPassStr),
    @required TResult initialized(),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectToWiFi(),
    TResult scanForWiFiNetworks(),
    TResult wifiSsidChanged(String wifiSsidStr),
    TResult wifiPassChanged(String wifiPassStr),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectToWiFi(ConnectToWifi value),
    @required TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    @required TResult wifiSsidChanged(WifiSsidChanged value),
    @required TResult wifiPassChanged(WifiPassChanged value),
    @required TResult initialized(Initialized value),
  }) {
    assert(connectToWiFi != null);
    assert(scanForWiFiNetworks != null);
    assert(wifiSsidChanged != null);
    assert(wifiPassChanged != null);
    assert(initialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectToWiFi(ConnectToWifi value),
    TResult scanForWiFiNetworks(ScanForWiFiNetworks value),
    TResult wifiSsidChanged(WifiSsidChanged value),
    TResult wifiPassChanged(WifiPassChanged value),
    TResult initialized(Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ManageWifiEvent {
  factory Initialized() = _$Initialized;
}

/// @nodoc
class _$ManageWifiStateTearOff {
  const _$ManageWifiStateTearOff();

// ignore: unused_element
  Initial initial() {
    return Initial();
  }

// ignore: unused_element
  Loading loading() {
    return Loading();
  }

// ignore: unused_element
  WifiIsDisabled wifiIsDisabled() {
    return WifiIsDisabled();
  }

// ignore: unused_element
  WifiIsEnabled wifiIsEnabled() {
    return WifiIsEnabled();
  }

// ignore: unused_element
  Loaded loaded() {
    return Loaded();
  }

// ignore: unused_element
  Error error() {
    return Error();
  }
}

/// @nodoc
// ignore: unused_element
const $ManageWifiState = _$ManageWifiStateTearOff();

/// @nodoc
mixin _$ManageWifiState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ManageWifiStateCopyWith<$Res> {
  factory $ManageWifiStateCopyWith(
          ManageWifiState value, $Res Function(ManageWifiState) then) =
      _$ManageWifiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManageWifiStateCopyWithImpl<$Res>
    implements $ManageWifiStateCopyWith<$Res> {
  _$ManageWifiStateCopyWithImpl(this._value, this._then);

  final ManageWifiState _value;
  // ignore: unused_field
  final $Res Function(ManageWifiState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ManageWifiStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'ManageWifiState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ManageWifiState {
  factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ManageWifiStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  _$Loading();

  @override
  String toString() {
    return 'ManageWifiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ManageWifiState {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class $WifiIsDisabledCopyWith<$Res> {
  factory $WifiIsDisabledCopyWith(
          WifiIsDisabled value, $Res Function(WifiIsDisabled) then) =
      _$WifiIsDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$WifiIsDisabledCopyWithImpl<$Res>
    extends _$ManageWifiStateCopyWithImpl<$Res>
    implements $WifiIsDisabledCopyWith<$Res> {
  _$WifiIsDisabledCopyWithImpl(
      WifiIsDisabled _value, $Res Function(WifiIsDisabled) _then)
      : super(_value, (v) => _then(v as WifiIsDisabled));

  @override
  WifiIsDisabled get _value => super._value as WifiIsDisabled;
}

/// @nodoc
class _$WifiIsDisabled implements WifiIsDisabled {
  _$WifiIsDisabled();

  @override
  String toString() {
    return 'ManageWifiState.wifiIsDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WifiIsDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return wifiIsDisabled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiIsDisabled != null) {
      return wifiIsDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return wifiIsDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiIsDisabled != null) {
      return wifiIsDisabled(this);
    }
    return orElse();
  }
}

abstract class WifiIsDisabled implements ManageWifiState {
  factory WifiIsDisabled() = _$WifiIsDisabled;
}

/// @nodoc
abstract class $WifiIsEnabledCopyWith<$Res> {
  factory $WifiIsEnabledCopyWith(
          WifiIsEnabled value, $Res Function(WifiIsEnabled) then) =
      _$WifiIsEnabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$WifiIsEnabledCopyWithImpl<$Res>
    extends _$ManageWifiStateCopyWithImpl<$Res>
    implements $WifiIsEnabledCopyWith<$Res> {
  _$WifiIsEnabledCopyWithImpl(
      WifiIsEnabled _value, $Res Function(WifiIsEnabled) _then)
      : super(_value, (v) => _then(v as WifiIsEnabled));

  @override
  WifiIsEnabled get _value => super._value as WifiIsEnabled;
}

/// @nodoc
class _$WifiIsEnabled implements WifiIsEnabled {
  _$WifiIsEnabled();

  @override
  String toString() {
    return 'ManageWifiState.wifiIsEnabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WifiIsEnabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return wifiIsEnabled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiIsEnabled != null) {
      return wifiIsEnabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return wifiIsEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wifiIsEnabled != null) {
      return wifiIsEnabled(this);
    }
    return orElse();
  }
}

abstract class WifiIsEnabled implements ManageWifiState {
  factory WifiIsEnabled() = _$WifiIsEnabled;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$ManageWifiStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;
}

/// @nodoc
class _$Loaded implements Loaded {
  _$Loaded();

  @override
  String toString() {
    return 'ManageWifiState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ManageWifiState {
  factory Loaded() = _$Loaded;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ManageWifiStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc
class _$Error implements Error {
  _$Error();

  @override
  String toString() {
    return 'ManageWifiState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult wifiIsDisabled(),
    @required TResult wifiIsEnabled(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult wifiIsDisabled(),
    TResult wifiIsEnabled(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult wifiIsDisabled(WifiIsDisabled value),
    @required TResult wifiIsEnabled(WifiIsEnabled value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(wifiIsDisabled != null);
    assert(wifiIsEnabled != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult wifiIsDisabled(WifiIsDisabled value),
    TResult wifiIsEnabled(WifiIsEnabled value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ManageWifiState {
  factory Error() = _$Error;
}
