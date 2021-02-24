// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'manage_wifi_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ManageWiFiEntityTearOff {
  const _$ManageWiFiEntityTearOff();

// ignore: unused_element
  _ManageWiFiEntity call(
      {@required ManageWiFiName name, ManageWiFiPass passpass}) {
    return _ManageWiFiEntity(
      name: name,
      passpass: passpass,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ManageWiFiEntity = _$ManageWiFiEntityTearOff();

/// @nodoc
mixin _$ManageWiFiEntity {
  ManageWiFiName get name;
  ManageWiFiPass get passpass;

  @JsonKey(ignore: true)
  $ManageWiFiEntityCopyWith<ManageWiFiEntity> get copyWith;
}

/// @nodoc
abstract class $ManageWiFiEntityCopyWith<$Res> {
  factory $ManageWiFiEntityCopyWith(
          ManageWiFiEntity value, $Res Function(ManageWiFiEntity) then) =
      _$ManageWiFiEntityCopyWithImpl<$Res>;
  $Res call({ManageWiFiName name, ManageWiFiPass passpass});
}

/// @nodoc
class _$ManageWiFiEntityCopyWithImpl<$Res>
    implements $ManageWiFiEntityCopyWith<$Res> {
  _$ManageWiFiEntityCopyWithImpl(this._value, this._then);

  final ManageWiFiEntity _value;
  // ignore: unused_field
  final $Res Function(ManageWiFiEntity) _then;

  @override
  $Res call({
    Object name = freezed,
    Object passpass = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as ManageWiFiName,
      passpass:
          passpass == freezed ? _value.passpass : passpass as ManageWiFiPass,
    ));
  }
}

/// @nodoc
abstract class _$ManageWiFiEntityCopyWith<$Res>
    implements $ManageWiFiEntityCopyWith<$Res> {
  factory _$ManageWiFiEntityCopyWith(
          _ManageWiFiEntity value, $Res Function(_ManageWiFiEntity) then) =
      __$ManageWiFiEntityCopyWithImpl<$Res>;
  @override
  $Res call({ManageWiFiName name, ManageWiFiPass passpass});
}

/// @nodoc
class __$ManageWiFiEntityCopyWithImpl<$Res>
    extends _$ManageWiFiEntityCopyWithImpl<$Res>
    implements _$ManageWiFiEntityCopyWith<$Res> {
  __$ManageWiFiEntityCopyWithImpl(
      _ManageWiFiEntity _value, $Res Function(_ManageWiFiEntity) _then)
      : super(_value, (v) => _then(v as _ManageWiFiEntity));

  @override
  _ManageWiFiEntity get _value => super._value as _ManageWiFiEntity;

  @override
  $Res call({
    Object name = freezed,
    Object passpass = freezed,
  }) {
    return _then(_ManageWiFiEntity(
      name: name == freezed ? _value.name : name as ManageWiFiName,
      passpass:
          passpass == freezed ? _value.passpass : passpass as ManageWiFiPass,
    ));
  }
}

/// @nodoc
class _$_ManageWiFiEntity extends _ManageWiFiEntity {
  const _$_ManageWiFiEntity({@required this.name, this.passpass})
      : assert(name != null),
        super._();

  @override
  final ManageWiFiName name;
  @override
  final ManageWiFiPass passpass;

  @override
  String toString() {
    return 'ManageWiFiEntity(name: $name, passpass: $passpass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ManageWiFiEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.passpass, passpass) ||
                const DeepCollectionEquality()
                    .equals(other.passpass, passpass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(passpass);

  @JsonKey(ignore: true)
  @override
  _$ManageWiFiEntityCopyWith<_ManageWiFiEntity> get copyWith =>
      __$ManageWiFiEntityCopyWithImpl<_ManageWiFiEntity>(this, _$identity);
}

abstract class _ManageWiFiEntity extends ManageWiFiEntity {
  const _ManageWiFiEntity._() : super._();
  const factory _ManageWiFiEntity(
      {@required ManageWiFiName name,
      ManageWiFiPass passpass}) = _$_ManageWiFiEntity;

  @override
  ManageWiFiName get name;
  @override
  ManageWiFiPass get passpass;
  @override
  @JsonKey(ignore: true)
  _$ManageWiFiEntityCopyWith<_ManageWiFiEntity> get copyWith;
}
