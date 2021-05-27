// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUserFailuresTearOff {
  const _$HomeUserFailuresTearOff();

  _Empty<T> empty<T>({required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

  _Unexpected<T> unexpected<T>() {
    return _Unexpected<T>();
  }

  _ValidateEmailNotEmpty<T> validateEmailNotEmpty<T>() {
    return _ValidateEmailNotEmpty<T>();
  }

  _InsufficientPermission<T> insufficientPermission<T>() {
    return _InsufficientPermission<T>();
  }

  _HomeDoesNotExist<T> homeDoesNotExist<T>() {
    return _HomeDoesNotExist<T>();
  }

  _CannotConnectToWiFi<T> cannotConnectToWiFi<T>() {
    return _CannotConnectToWiFi<T>();
  }

  _WifiDisabled<T> wifiDisabled<T>() {
    return _WifiDisabled<T>();
  }

  _UnableToUpdate<T> unableToUpdate<T>() {
    return _UnableToUpdate<T>();
  }

  _AccessPointIsNotOpen<T> accessPointIsNotOpen<T>() {
    return _AccessPointIsNotOpen<T>();
  }
}

/// @nodoc
const $HomeUserFailures = _$HomeUserFailuresTearOff();

/// @nodoc
mixin _$HomeUserFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserFailuresCopyWith<T, $Res> {
  factory $HomeUserFailuresCopyWith(
          HomeUserFailures<T> value, $Res Function(HomeUserFailures<T>) then) =
      _$HomeUserFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements $HomeUserFailuresCopyWith<T, $Res> {
  _$HomeUserFailuresCopyWithImpl(this._value, this._then);

  final HomeUserFailures<T> _value;
  // ignore: unused_field
  final $Res Function(HomeUserFailures<T>) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'HomeUserFailures<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements HomeUserFailures<T> {
  const factory _Empty({required T failedValue}) = _$_Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$UnexpectedCopyWith<T, $Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected<T> _value, $Res Function(_Unexpected<T>) _then)
      : super(_value, (v) => _then(v as _Unexpected<T>));

  @override
  _Unexpected<T> get _value => super._value as _Unexpected<T>;
}

/// @nodoc

class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements HomeUserFailures<T> {
  const factory _Unexpected() = _$_Unexpected<T>;
}

/// @nodoc
abstract class _$ValidateEmailNotEmptyCopyWith<T, $Res> {
  factory _$ValidateEmailNotEmptyCopyWith(_ValidateEmailNotEmpty<T> value,
          $Res Function(_ValidateEmailNotEmpty<T>) then) =
      __$ValidateEmailNotEmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$ValidateEmailNotEmptyCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$ValidateEmailNotEmptyCopyWith<T, $Res> {
  __$ValidateEmailNotEmptyCopyWithImpl(_ValidateEmailNotEmpty<T> _value,
      $Res Function(_ValidateEmailNotEmpty<T>) _then)
      : super(_value, (v) => _then(v as _ValidateEmailNotEmpty<T>));

  @override
  _ValidateEmailNotEmpty<T> get _value =>
      super._value as _ValidateEmailNotEmpty<T>;
}

/// @nodoc

class _$_ValidateEmailNotEmpty<T> implements _ValidateEmailNotEmpty<T> {
  const _$_ValidateEmailNotEmpty();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.validateEmailNotEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ValidateEmailNotEmpty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return validateEmailNotEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (validateEmailNotEmpty != null) {
      return validateEmailNotEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return validateEmailNotEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (validateEmailNotEmpty != null) {
      return validateEmailNotEmpty(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailNotEmpty<T> implements HomeUserFailures<T> {
  const factory _ValidateEmailNotEmpty() = _$_ValidateEmailNotEmpty<T>;
}

/// @nodoc
abstract class _$InsufficientPermissionCopyWith<T, $Res> {
  factory _$InsufficientPermissionCopyWith(_InsufficientPermission<T> value,
          $Res Function(_InsufficientPermission<T>) then) =
      __$InsufficientPermissionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InsufficientPermissionCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$InsufficientPermissionCopyWith<T, $Res> {
  __$InsufficientPermissionCopyWithImpl(_InsufficientPermission<T> _value,
      $Res Function(_InsufficientPermission<T>) _then)
      : super(_value, (v) => _then(v as _InsufficientPermission<T>));

  @override
  _InsufficientPermission<T> get _value =>
      super._value as _InsufficientPermission<T>;
}

/// @nodoc

class _$_InsufficientPermission<T> implements _InsufficientPermission<T> {
  const _$_InsufficientPermission();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.insufficientPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InsufficientPermission<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission<T> implements HomeUserFailures<T> {
  const factory _InsufficientPermission() = _$_InsufficientPermission<T>;
}

/// @nodoc
abstract class _$HomeDoesNotExistCopyWith<T, $Res> {
  factory _$HomeDoesNotExistCopyWith(_HomeDoesNotExist<T> value,
          $Res Function(_HomeDoesNotExist<T>) then) =
      __$HomeDoesNotExistCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$HomeDoesNotExistCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$HomeDoesNotExistCopyWith<T, $Res> {
  __$HomeDoesNotExistCopyWithImpl(
      _HomeDoesNotExist<T> _value, $Res Function(_HomeDoesNotExist<T>) _then)
      : super(_value, (v) => _then(v as _HomeDoesNotExist<T>));

  @override
  _HomeDoesNotExist<T> get _value => super._value as _HomeDoesNotExist<T>;
}

/// @nodoc

class _$_HomeDoesNotExist<T> implements _HomeDoesNotExist<T> {
  const _$_HomeDoesNotExist();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.homeDoesNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeDoesNotExist<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return homeDoesNotExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (homeDoesNotExist != null) {
      return homeDoesNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return homeDoesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (homeDoesNotExist != null) {
      return homeDoesNotExist(this);
    }
    return orElse();
  }
}

abstract class _HomeDoesNotExist<T> implements HomeUserFailures<T> {
  const factory _HomeDoesNotExist() = _$_HomeDoesNotExist<T>;
}

/// @nodoc
abstract class _$CannotConnectToWiFiCopyWith<T, $Res> {
  factory _$CannotConnectToWiFiCopyWith(_CannotConnectToWiFi<T> value,
          $Res Function(_CannotConnectToWiFi<T>) then) =
      __$CannotConnectToWiFiCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$CannotConnectToWiFiCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$CannotConnectToWiFiCopyWith<T, $Res> {
  __$CannotConnectToWiFiCopyWithImpl(_CannotConnectToWiFi<T> _value,
      $Res Function(_CannotConnectToWiFi<T>) _then)
      : super(_value, (v) => _then(v as _CannotConnectToWiFi<T>));

  @override
  _CannotConnectToWiFi<T> get _value => super._value as _CannotConnectToWiFi<T>;
}

/// @nodoc

class _$_CannotConnectToWiFi<T> implements _CannotConnectToWiFi<T> {
  const _$_CannotConnectToWiFi();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.cannotConnectToWiFi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CannotConnectToWiFi<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return cannotConnectToWiFi();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (cannotConnectToWiFi != null) {
      return cannotConnectToWiFi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return cannotConnectToWiFi(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (cannotConnectToWiFi != null) {
      return cannotConnectToWiFi(this);
    }
    return orElse();
  }
}

abstract class _CannotConnectToWiFi<T> implements HomeUserFailures<T> {
  const factory _CannotConnectToWiFi() = _$_CannotConnectToWiFi<T>;
}

/// @nodoc
abstract class _$WifiDisabledCopyWith<T, $Res> {
  factory _$WifiDisabledCopyWith(
          _WifiDisabled<T> value, $Res Function(_WifiDisabled<T>) then) =
      __$WifiDisabledCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$WifiDisabledCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$WifiDisabledCopyWith<T, $Res> {
  __$WifiDisabledCopyWithImpl(
      _WifiDisabled<T> _value, $Res Function(_WifiDisabled<T>) _then)
      : super(_value, (v) => _then(v as _WifiDisabled<T>));

  @override
  _WifiDisabled<T> get _value => super._value as _WifiDisabled<T>;
}

/// @nodoc

class _$_WifiDisabled<T> implements _WifiDisabled<T> {
  const _$_WifiDisabled();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.wifiDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WifiDisabled<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return wifiDisabled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (wifiDisabled != null) {
      return wifiDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return wifiDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (wifiDisabled != null) {
      return wifiDisabled(this);
    }
    return orElse();
  }
}

abstract class _WifiDisabled<T> implements HomeUserFailures<T> {
  const factory _WifiDisabled() = _$_WifiDisabled<T>;
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<T, $Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate<T> value, $Res Function(_UnableToUpdate<T>) then) =
      __$UnableToUpdateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$UnableToUpdateCopyWith<T, $Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate<T> _value, $Res Function(_UnableToUpdate<T>) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate<T>));

  @override
  _UnableToUpdate<T> get _value => super._value as _UnableToUpdate<T>;
}

/// @nodoc

class _$_UnableToUpdate<T> implements _UnableToUpdate<T> {
  const _$_UnableToUpdate();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnableToUpdate<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate<T> implements HomeUserFailures<T> {
  const factory _UnableToUpdate() = _$_UnableToUpdate<T>;
}

/// @nodoc
abstract class _$AccessPointIsNotOpenCopyWith<T, $Res> {
  factory _$AccessPointIsNotOpenCopyWith(_AccessPointIsNotOpen<T> value,
          $Res Function(_AccessPointIsNotOpen<T>) then) =
      __$AccessPointIsNotOpenCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$AccessPointIsNotOpenCopyWithImpl<T, $Res>
    extends _$HomeUserFailuresCopyWithImpl<T, $Res>
    implements _$AccessPointIsNotOpenCopyWith<T, $Res> {
  __$AccessPointIsNotOpenCopyWithImpl(_AccessPointIsNotOpen<T> _value,
      $Res Function(_AccessPointIsNotOpen<T>) _then)
      : super(_value, (v) => _then(v as _AccessPointIsNotOpen<T>));

  @override
  _AccessPointIsNotOpen<T> get _value =>
      super._value as _AccessPointIsNotOpen<T>;
}

/// @nodoc

class _$_AccessPointIsNotOpen<T> implements _AccessPointIsNotOpen<T> {
  const _$_AccessPointIsNotOpen();

  @override
  String toString() {
    return 'HomeUserFailures<$T>.accessPointIsNotOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AccessPointIsNotOpen<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() homeDoesNotExist,
    required TResult Function() cannotConnectToWiFi,
    required TResult Function() wifiDisabled,
    required TResult Function() unableToUpdate,
    required TResult Function() accessPointIsNotOpen,
  }) {
    return accessPointIsNotOpen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? homeDoesNotExist,
    TResult Function()? cannotConnectToWiFi,
    TResult Function()? wifiDisabled,
    TResult Function()? unableToUpdate,
    TResult Function()? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (accessPointIsNotOpen != null) {
      return accessPointIsNotOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_ValidateEmailNotEmpty<T> value)
        validateEmailNotEmpty,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_HomeDoesNotExist<T> value) homeDoesNotExist,
    required TResult Function(_CannotConnectToWiFi<T> value)
        cannotConnectToWiFi,
    required TResult Function(_WifiDisabled<T> value) wifiDisabled,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
    required TResult Function(_AccessPointIsNotOpen<T> value)
        accessPointIsNotOpen,
  }) {
    return accessPointIsNotOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_HomeDoesNotExist<T> value)? homeDoesNotExist,
    TResult Function(_CannotConnectToWiFi<T> value)? cannotConnectToWiFi,
    TResult Function(_WifiDisabled<T> value)? wifiDisabled,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    TResult Function(_AccessPointIsNotOpen<T> value)? accessPointIsNotOpen,
    required TResult orElse(),
  }) {
    if (accessPointIsNotOpen != null) {
      return accessPointIsNotOpen(this);
    }
    return orElse();
  }
}

abstract class _AccessPointIsNotOpen<T> implements HomeUserFailures<T> {
  const factory _AccessPointIsNotOpen() = _$_AccessPointIsNotOpen<T>;
}
