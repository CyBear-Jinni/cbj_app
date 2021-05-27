// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'devices_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DevicesFailureTearOff {
  const _$DevicesFailureTearOff();

  _Empty<T> empty<T>({required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

  _ActionExcecuter<T> actionExcecuter<T>({required T failedValue}) {
    return _ActionExcecuter<T>(
      failedValue: failedValue,
    );
  }

  _ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int max}) {
    return _ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  _Unexpected<T> unexpected<T>() {
    return _Unexpected<T>();
  }

  _InsufficientPermission<T> insufficientPermission<T>() {
    return _InsufficientPermission<T>();
  }

  _UnableToUpdate<T> unableToUpdate<T>() {
    return _UnableToUpdate<T>();
  }
}

/// @nodoc
const $DevicesFailure = _$DevicesFailureTearOff();

/// @nodoc
mixin _$DevicesFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
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
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements DevicesFailure<T> {
  const factory _Empty({required T failedValue}) = _$_Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? failedValue = freezed,
  }) {
    return _then(_ActionExcecuter<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ActionExcecuter<T> implements _ActionExcecuter<T> {
  const _$_ActionExcecuter({required this.failedValue});

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
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) {
    return actionExcecuter(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (actionExcecuter != null) {
      return actionExcecuter(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) {
    return actionExcecuter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (actionExcecuter != null) {
      return actionExcecuter(this);
    }
    return orElse();
  }
}

abstract class _ActionExcecuter<T> implements DevicesFailure<T> {
  const factory _ActionExcecuter({required T failedValue}) =
      _$_ActionExcecuter<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionExcecuterCopyWith<T, _ActionExcecuter<T>> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength({required this.failedValue, required this.max});

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
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements DevicesFailure<T> {
  const factory _ExceedingLength({required T failedValue, required int max}) =
      _$_ExceedingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
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
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
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
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
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
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) actionExcecuter,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? actionExcecuter,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
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
    required TResult Function(_ActionExcecuter<T> value) actionExcecuter,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_InsufficientPermission<T> value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate<T> value) unableToUpdate,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_ActionExcecuter<T> value)? actionExcecuter,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(_UnableToUpdate<T> value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate<T> implements DevicesFailure<T> {
  const factory _UnableToUpdate() = _$_UnableToUpdate<T>;
}
