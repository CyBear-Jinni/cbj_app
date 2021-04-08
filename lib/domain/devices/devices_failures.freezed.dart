// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'devices_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DevicesFailureTearOff {
  const _$DevicesFailureTearOff();

// ignore: unused_element
  _Empty<T> empty<T>({@required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _ActionExcecuter<T> actionExcecuter<T>({@required T failedValue}) {
    return _ActionExcecuter<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return _ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  _Unexpected<T> unexpected<T>() {
    return _Unexpected<T>();
  }

// ignore: unused_element
  _InsufficientPermission<T> insufficientPermission<T>() {
    return _InsufficientPermission<T>();
  }

// ignore: unused_element
  _UnableToUpdate<T> unableToUpdate<T>() {
    return _UnableToUpdate<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $DevicesFailure = _$DevicesFailureTearOff();

/// @nodoc
mixin _$DevicesFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DevicesFailureCopyWith<T, $Res> {
  factory $DevicesFailureCopyWith(
          DevicesFailure<T> value, $Res Function(DevicesFailure<T>) then) =
      _$DevicesFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DevicesFailureCopyWithImpl<T, $Res>
    implements $DevicesFailureCopyWith<T, $Res> {
  _$DevicesFailureCopyWithImpl(this._value, this._then);

  final DevicesFailure<T> _value;
  // ignore: unused_field
  final $Res Function(DevicesFailure<T>) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res>
    extends _$DevicesFailureCopyWithImpl<T, $Res>
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
    return 'DevicesFailure<$T>.empty(failedValue: $failedValue)';
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
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
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
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
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

abstract class _Empty<T> implements DevicesFailure<T> {
  const factory _Empty({@required T failedValue}) = _$_Empty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith;
}

/// @nodoc
abstract class _$ActionExcecuterCopyWith<T, $Res> {
  factory _$ActionExcecuterCopyWith(
          _ActionExcecuter<T> value, $Res Function(_ActionExcecuter<T>) then) =
      __$ActionExcecuterCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$ActionExcecuterCopyWithImpl<T, $Res>
    extends _$DevicesFailureCopyWithImpl<T, $Res>
    implements _$ActionExcecuterCopyWith<T, $Res> {
  __$ActionExcecuterCopyWithImpl(
      _ActionExcecuter<T> _value, $Res Function(_ActionExcecuter<T>) _then)
      : super(_value, (v) => _then(v as _ActionExcecuter<T>));

  @override
  _ActionExcecuter<T> get _value => super._value as _ActionExcecuter<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_ActionExcecuter<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$_ActionExcecuter<T> implements _ActionExcecuter<T> {
  const _$_ActionExcecuter({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'DevicesFailure<$T>.actionExcecuter(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionExcecuter<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$ActionExcecuterCopyWith<T, _ActionExcecuter<T>> get copyWith =>
      __$ActionExcecuterCopyWithImpl<T, _ActionExcecuter<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return actionExcecuter(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionExcecuter != null) {
      return actionExcecuter(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return actionExcecuter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionExcecuter != null) {
      return actionExcecuter(this);
    }
    return orElse();
  }
}

abstract class _ActionExcecuter<T> implements DevicesFailure<T> {
  const factory _ActionExcecuter({@required T failedValue}) =
      _$_ActionExcecuter<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$ActionExcecuterCopyWith<T, _ActionExcecuter<T>> get copyWith;
}

/// @nodoc
abstract class _$ExceedingLengthCopyWith<T, $Res> {
  factory _$ExceedingLengthCopyWith(
          _ExceedingLength<T> value, $Res Function(_ExceedingLength<T>) then) =
      __$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$DevicesFailureCopyWithImpl<T, $Res>
    implements _$ExceedingLengthCopyWith<T, $Res> {
  __$ExceedingLengthCopyWithImpl(
      _ExceedingLength<T> _value, $Res Function(_ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _ExceedingLength<T>));

  @override
  _ExceedingLength<T> get _value => super._value as _ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(_ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'DevicesFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
      __$ExceedingLengthCopyWithImpl<T, _ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult unableToUpdate(_UnableToUpdate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements DevicesFailure<T> {
  const factory _ExceedingLength({@required T failedValue, @required int max}) =
      _$_ExceedingLength<T>;

  T get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$DevicesFailureCopyWithImpl<T, $Res>
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
    return 'DevicesFailure<$T>.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
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

abstract class _Unexpected<T> implements DevicesFailure<T> {
  const factory _Unexpected() = _$_Unexpected<T>;
}

/// @nodoc
abstract class _$InsufficientPermissionCopyWith<T, $Res> {
  factory _$InsufficientPermissionCopyWith(_InsufficientPermission<T> value,
          $Res Function(_InsufficientPermission<T>) then) =
      __$InsufficientPermissionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InsufficientPermissionCopyWithImpl<T, $Res>
    extends _$DevicesFailureCopyWithImpl<T, $Res>
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
    return 'DevicesFailure<$T>.insufficientPermission()';
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
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
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
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
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

abstract class _InsufficientPermission<T> implements DevicesFailure<T> {
  const factory _InsufficientPermission() = _$_InsufficientPermission<T>;
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<T, $Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate<T> value, $Res Function(_UnableToUpdate<T>) then) =
      __$UnableToUpdateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<T, $Res>
    extends _$DevicesFailureCopyWithImpl<T, $Res>
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
    return 'DevicesFailure<$T>.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnableToUpdate<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult actionExcecuter(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult unexpected(),
    @required TResult insufficientPermission(),
    @required TResult unableToUpdate(),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult actionExcecuter(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult unexpected(),
    TResult insufficientPermission(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult actionExcecuter(_ActionExcecuter<T> value),
    @required TResult exceedingLength(_ExceedingLength<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult unableToUpdate(_UnableToUpdate<T> value),
  }) {
    assert(empty != null);
    assert(actionExcecuter != null);
    assert(exceedingLength != null);
    assert(unexpected != null);
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult actionExcecuter(_ActionExcecuter<T> value),
    TResult exceedingLength(_ExceedingLength<T> value),
    TResult unexpected(_Unexpected<T> value),
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

abstract class _UnableToUpdate<T> implements DevicesFailure<T> {
  const factory _UnableToUpdate() = _$_UnableToUpdate<T>;
}
