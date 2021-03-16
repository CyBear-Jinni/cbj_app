// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'manage_network_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ManageNetworkEntityTearOff {
  const _$ManageNetworkEntityTearOff();

// ignore: unused_element
  _ManageNetworkEntity call(
      {@required ManageWiFiName name, ManageWiFiPass pass}) {
    return _ManageNetworkEntity(
      name: name,
      pass: pass,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ManageNetworkEntity = _$ManageNetworkEntityTearOff();

/// @nodoc
mixin _$ManageNetworkEntity {
  ManageWiFiName get name;
  ManageWiFiPass get pass;

  @JsonKey(ignore: true)
  $ManageNetworkEntityCopyWith<ManageNetworkEntity> get copyWith;
}

/// @nodoc
abstract class $ManageNetworkEntityCopyWith<$Res> {
  factory $ManageNetworkEntityCopyWith(
          ManageNetworkEntity value, $Res Function(ManageNetworkEntity) then) =
      _$ManageNetworkEntityCopyWithImpl<$Res>;
  $Res call({ManageWiFiName name, ManageWiFiPass pass});
}

/// @nodoc
class _$ManageNetworkEntityCopyWithImpl<$Res>
    implements $ManageNetworkEntityCopyWith<$Res> {
  _$ManageNetworkEntityCopyWithImpl(this._value, this._then);

  final ManageNetworkEntity _value;
  // ignore: unused_field
  final $Res Function(ManageNetworkEntity) _then;

  @override
  $Res call({
    Object name = freezed,
    Object pass = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as ManageWiFiName,
      pass: pass == freezed ? _value.pass : pass as ManageWiFiPass,
    ));
  }
}

/// @nodoc
abstract class _$ManageNetworkEntityCopyWith<$Res>
    implements $ManageNetworkEntityCopyWith<$Res> {
  factory _$ManageNetworkEntityCopyWith(_ManageNetworkEntity value,
          $Res Function(_ManageNetworkEntity) then) =
      __$ManageNetworkEntityCopyWithImpl<$Res>;
  @override
  $Res call({ManageWiFiName name, ManageWiFiPass pass});
}

/// @nodoc
class __$ManageNetworkEntityCopyWithImpl<$Res>
    extends _$ManageNetworkEntityCopyWithImpl<$Res>
    implements _$ManageNetworkEntityCopyWith<$Res> {
  __$ManageNetworkEntityCopyWithImpl(
      _ManageNetworkEntity _value, $Res Function(_ManageNetworkEntity) _then)
      : super(_value, (v) => _then(v as _ManageNetworkEntity));

  @override
  _ManageNetworkEntity get _value => super._value as _ManageNetworkEntity;

  @override
  $Res call({
    Object name = freezed,
    Object pass = freezed,
  }) {
    return _then(_ManageNetworkEntity(
      name: name == freezed ? _value.name : name as ManageWiFiName,
      pass: pass == freezed ? _value.pass : pass as ManageWiFiPass,
    ));
  }
}

/// @nodoc
class _$_ManageNetworkEntity extends _ManageNetworkEntity {
  const _$_ManageNetworkEntity({@required this.name, this.pass})
      : assert(name != null),
        super._();

  @override
  final ManageWiFiName name;
  @override
  final ManageWiFiPass pass;

  @override
  String toString() {
    return 'ManageNetworkEntity(name: $name, pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ManageNetworkEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.pass, pass) ||
                const DeepCollectionEquality().equals(other.pass, pass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(pass);

  @JsonKey(ignore: true)
  @override
  _$ManageNetworkEntityCopyWith<_ManageNetworkEntity> get copyWith =>
      __$ManageNetworkEntityCopyWithImpl<_ManageNetworkEntity>(
          this, _$identity);
}

abstract class _ManageNetworkEntity extends ManageNetworkEntity {
  const _ManageNetworkEntity._() : super._();
  const factory _ManageNetworkEntity(
      {@required ManageWiFiName name,
      ManageWiFiPass pass}) = _$_ManageNetworkEntity;

  @override
  ManageWiFiName get name;
  @override
  ManageWiFiPass get pass;
  @override
  @JsonKey(ignore: true)
  _$ManageNetworkEntityCopyWith<_ManageNetworkEntity> get copyWith;
}
