// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_home_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateHomeFailureTearOff {
  const _$CreateHomeFailureTearOff();

// ignore: unused_element
  _Empty<T> empty<T>({@required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _Unexpected<T> unexpected<T>({@required T failedValue}) {
    return _Unexpected<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _DevicesUserEmailIsInvalid<T> devicesUserEmailIsInvalid<T>() {
    return _DevicesUserEmailIsInvalid<T>();
  }

// ignore: unused_element
  _InsufficientPermission<T> insufficientPermission<T>() {
    return _InsufficientPermission<T>();
  }

// ignore: unused_element
  _UnableToUpdate<T> unableToUpdate<T>({@required T failedValue}) {
    return _UnableToUpdate<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateHomeFailure = _$CreateHomeFailureTearOff();

/// @nodoc
mixin _$CreateHomeFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(T failedValue),
    @required TResult devicesUserEmailIsInvalid(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(T failedValue),
    TResult devicesUserEmailIsInvalid(),
    TResult insufficientPermission(),
    TResult unableToUpdate(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required
        TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CreateHomeFailureCopyWith<T, $Res> {
  factory $CreateHomeFailureCopyWith(CreateHomeFailure<T> value,
          $Res Function(CreateHomeFailure<T>) then) =
      _$CreateHomeFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CreateHomeFailureCopyWithImpl<T, $Res>
    implements $CreateHomeFailureCopyWith<T, $Res> {
  _$CreateHomeFailureCopyWithImpl(this._value, this._then);

  final CreateHomeFailure<T> _value;
  // ignore: unused_field
  final $Res Function(CreateHomeFailure<T>) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res>
    extends _$CreateHomeFailureCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CreateHomeFailure<$T>.empty(failedValue: $failedValue)';
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
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(T failedValue),
    @required TResult devicesUserEmailIsInvalid(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(T failedValue),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(T failedValue),
    TResult devicesUserEmailIsInvalid(),
    TResult insufficientPermission(),
    TResult unableToUpdate(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required
        TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements CreateHomeFailure<T> {
  const factory _Empty({@required T failedValue}) = _$_Empty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$CreateHomeFailureCopyWithImpl<T, $Res>
    implements _$UnexpectedCopyWith<T, $Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected<T> _value, $Res Function(_Unexpected<T>) _then)
      : super(_value, (v) => _then(v as _Unexpected<T>));

  @override
  _Unexpected<T> get _value => super._value as _Unexpected<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_Unexpected<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CreateHomeFailure<$T>.unexpected(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      __$UnexpectedCopyWithImpl<T, _Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(T failedValue),
    @required TResult devicesUserEmailIsInvalid(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(T failedValue),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unexpected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(T failedValue),
    TResult devicesUserEmailIsInvalid(),
    TResult insufficientPermission(),
    TResult unableToUpdate(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required
        TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements CreateHomeFailure<T> {
  const factory _Unexpected({@required T failedValue}) = _$_Unexpected<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith;
}

/// @nodoc
abstract class _$DevicesUserEmailIsInvalidCopyWith<T, $Res> {
  factory _$DevicesUserEmailIsInvalidCopyWith(
          _DevicesUserEmailIsInvalid<T> value,
          $Res Function(_DevicesUserEmailIsInvalid<T>) then) =
      __$DevicesUserEmailIsInvalidCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$DevicesUserEmailIsInvalidCopyWithImpl<T, $Res>
    extends _$CreateHomeFailureCopyWithImpl<T, $Res>
    implements _$DevicesUserEmailIsInvalidCopyWith<T, $Res> {
  __$DevicesUserEmailIsInvalidCopyWithImpl(_DevicesUserEmailIsInvalid<T> _value,
      $Res Function(_DevicesUserEmailIsInvalid<T>) _then)
      : super(_value, (v) => _then(v as _DevicesUserEmailIsInvalid<T>));

  @override
  _DevicesUserEmailIsInvalid<T> get _value =>
      super._value as _DevicesUserEmailIsInvalid<T>;
}

/// @nodoc
class _$_DevicesUserEmailIsInvalid<T> implements _DevicesUserEmailIsInvalid<T> {
  const _$_DevicesUserEmailIsInvalid();

  @override
  String toString() {
    return 'CreateHomeFailure<$T>.devicesUserEmailIsInvalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DevicesUserEmailIsInvalid<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(T failedValue),
    @required TResult devicesUserEmailIsInvalid(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(T failedValue),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return devicesUserEmailIsInvalid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(T failedValue),
    TResult devicesUserEmailIsInvalid(),
    TResult insufficientPermission(),
    TResult unableToUpdate(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (devicesUserEmailIsInvalid != null) {
      return devicesUserEmailIsInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required
        TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return devicesUserEmailIsInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (devicesUserEmailIsInvalid != null) {
      return devicesUserEmailIsInvalid(this);
    }
    return orElse();
  }
}

abstract class _DevicesUserEmailIsInvalid<T> implements CreateHomeFailure<T> {
  const factory _DevicesUserEmailIsInvalid() = _$_DevicesUserEmailIsInvalid<T>;
}

/// @nodoc
abstract class _$InsufficientPermissionCopyWith<T, $Res> {
  factory _$InsufficientPermissionCopyWith(_InsufficientPermission<T> value,
          $Res Function(_InsufficientPermission<T>) then) =
      __$InsufficientPermissionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InsufficientPermissionCopyWithImpl<T, $Res>
    extends _$CreateHomeFailureCopyWithImpl<T, $Res>
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
    return 'CreateHomeFailure<$T>.insufficientPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InsufficientPermission<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(T failedValue),
    @required TResult devicesUserEmailIsInvalid(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(T failedValue),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(T failedValue),
    TResult devicesUserEmailIsInvalid(),
    TResult insufficientPermission(),
    TResult unableToUpdate(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required
        TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission<T> implements CreateHomeFailure<T> {
  const factory _InsufficientPermission() = _$_InsufficientPermission<T>;
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<T, $Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate<T> value, $Res Function(_UnableToUpdate<T>) then) =
      __$UnableToUpdateCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<T, $Res>
    extends _$CreateHomeFailureCopyWithImpl<T, $Res>
    implements _$UnableToUpdateCopyWith<T, $Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate<T> _value, $Res Function(_UnableToUpdate<T>) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate<T>));

  @override
  _UnableToUpdate<T> get _value => super._value as _UnableToUpdate<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_UnableToUpdate<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$_UnableToUpdate<T> implements _UnableToUpdate<T> {
  const _$_UnableToUpdate({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CreateHomeFailure<$T>.unableToUpdate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnableToUpdate<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$UnableToUpdateCopyWith<T, _UnableToUpdate<T>> get copyWith =>
      __$UnableToUpdateCopyWithImpl<T, _UnableToUpdate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(T failedValue),
    @required TResult devicesUserEmailIsInvalid(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(T failedValue),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unableToUpdate(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(T failedValue),
    TResult devicesUserEmailIsInvalid(),
    TResult insufficientPermission(),
    TResult unableToUpdate(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required
        TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(devicesUserEmailIsInvalid != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult devicesUserEmailIsInvalid(_DevicesUserEmailIsInvalid<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate<T> implements CreateHomeFailure<T> {
  const factory _UnableToUpdate({@required T failedValue}) =
      _$_UnableToUpdate<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$UnableToUpdateCopyWith<T, _UnableToUpdate<T>> get copyWith;
}
