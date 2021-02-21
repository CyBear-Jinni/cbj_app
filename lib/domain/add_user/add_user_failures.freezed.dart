// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddUserFailuresTearOff {
  const _$AddUserFailuresTearOff();

// ignore: unused_element
  _Empty<T> empty<T>({@required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _Unexpected<T> unexpected<T>() {
    return _Unexpected<T>();
  }

// ignore: unused_element
  _ValidateEmailNotEmpty<T> validateEmailNotEmpty<T>() {
    return _ValidateEmailNotEmpty<T>();
  }

// ignore: unused_element
  _InsufficientPermission<T> insufficientPermission<T>() {
    return _InsufficientPermission<T>();
  }

// ignore: unused_element
  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }

// ignore: unused_element
  ServerError<T> serverError<T>() {
    return ServerError<T>();
  }

// ignore: unused_element
  EmailAlreadyExist<T> emailAlreadyExist<T>() {
    return EmailAlreadyExist<T>();
  }

// ignore: unused_element
  CannotFindUser<T> cannotFindUser<T>() {
    return CannotFindUser<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserFailures = _$AddUserFailuresTearOff();

/// @nodoc
mixin _$AddUserFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddUserFailuresCopyWith<T, $Res> {
  factory $AddUserFailuresCopyWith(
          AddUserFailures<T> value, $Res Function(AddUserFailures<T>) then) =
      _$AddUserFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AddUserFailuresCopyWithImpl<T, $Res>
    implements $AddUserFailuresCopyWith<T, $Res> {
  _$AddUserFailuresCopyWithImpl(this._value, this._then);

  final AddUserFailures<T> _value;
  // ignore: unused_field
  final $Res Function(AddUserFailures<T>) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res>
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserFailures<$T>.empty(failedValue: $failedValue)';
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
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
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
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements AddUserFailures<T> {
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
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserFailures<$T>.unexpected()';
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
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
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
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements AddUserFailures<T> {
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
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserFailures<$T>.validateEmailNotEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ValidateEmailNotEmpty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return validateEmailNotEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validateEmailNotEmpty != null) {
      return validateEmailNotEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return validateEmailNotEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validateEmailNotEmpty != null) {
      return validateEmailNotEmpty(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailNotEmpty<T> implements AddUserFailures<T> {
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
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserFailures<$T>.insufficientPermission()';
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
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
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
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission<T> implements AddUserFailures<T> {
  const factory _InsufficientPermission() = _$_InsufficientPermission<T>;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<T, $Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser<T> value, $Res Function(CancelledByUser<T>) then) =
      _$CancelledByUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<T, $Res>
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
    implements $CancelledByUserCopyWith<T, $Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser<T> _value, $Res Function(CancelledByUser<T>) _then)
      : super(_value, (v) => _then(v as CancelledByUser<T>));

  @override
  CancelledByUser<T> get _value => super._value as CancelledByUser<T>;
}

/// @nodoc
class _$CancelledByUser<T> implements CancelledByUser<T> {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AddUserFailures<$T>.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements AddUserFailures<T> {
  const factory CancelledByUser() = _$CancelledByUser<T>;
}

/// @nodoc
abstract class $ServerErrorCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(
          ServerError<T> value, $Res Function(ServerError<T>) then) =
      _$ServerErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<T, $Res>
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
    implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(
      ServerError<T> _value, $Res Function(ServerError<T>) _then)
      : super(_value, (v) => _then(v as ServerError<T>));

  @override
  ServerError<T> get _value => super._value as ServerError<T>;
}

/// @nodoc
class _$ServerError<T> implements ServerError<T> {
  const _$ServerError();

  @override
  String toString() {
    return 'AddUserFailures<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements AddUserFailures<T> {
  const factory ServerError() = _$ServerError<T>;
}

/// @nodoc
abstract class $EmailAlreadyExistCopyWith<T, $Res> {
  factory $EmailAlreadyExistCopyWith(EmailAlreadyExist<T> value,
          $Res Function(EmailAlreadyExist<T>) then) =
      _$EmailAlreadyExistCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$EmailAlreadyExistCopyWithImpl<T, $Res>
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
    implements $EmailAlreadyExistCopyWith<T, $Res> {
  _$EmailAlreadyExistCopyWithImpl(
      EmailAlreadyExist<T> _value, $Res Function(EmailAlreadyExist<T>) _then)
      : super(_value, (v) => _then(v as EmailAlreadyExist<T>));

  @override
  EmailAlreadyExist<T> get _value => super._value as EmailAlreadyExist<T>;
}

/// @nodoc
class _$EmailAlreadyExist<T> implements EmailAlreadyExist<T> {
  const _$EmailAlreadyExist();

  @override
  String toString() {
    return 'AddUserFailures<$T>.emailAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyExist<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return emailAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyExist != null) {
      return emailAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return emailAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyExist != null) {
      return emailAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyExist<T> implements AddUserFailures<T> {
  const factory EmailAlreadyExist() = _$EmailAlreadyExist<T>;
}

/// @nodoc
abstract class $CannotFindUserCopyWith<T, $Res> {
  factory $CannotFindUserCopyWith(
          CannotFindUser<T> value, $Res Function(CannotFindUser<T>) then) =
      _$CannotFindUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CannotFindUserCopyWithImpl<T, $Res>
    extends _$AddUserFailuresCopyWithImpl<T, $Res>
    implements $CannotFindUserCopyWith<T, $Res> {
  _$CannotFindUserCopyWithImpl(
      CannotFindUser<T> _value, $Res Function(CannotFindUser<T>) _then)
      : super(_value, (v) => _then(v as CannotFindUser<T>));

  @override
  CannotFindUser<T> get _value => super._value as CannotFindUser<T>;
}

/// @nodoc
class _$CannotFindUser<T> implements CannotFindUser<T> {
  const _$CannotFindUser();

  @override
  String toString() {
    return 'AddUserFailures<$T>.cannotFindUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CannotFindUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult unexpected(),
    @required TResult validateEmailNotEmpty(),
    @required TResult insufficientPermission(),
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyExist(),
    @required TResult cannotFindUser(),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return cannotFindUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult unexpected(),
    TResult validateEmailNotEmpty(),
    TResult insufficientPermission(),
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyExist(),
    TResult cannotFindUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cannotFindUser != null) {
      return cannotFindUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(_Empty<T> value),
    @required TResult unexpected(_Unexpected<T> value),
    @required TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    @required TResult insufficientPermission(_InsufficientPermission<T> value),
    @required TResult cancelledByUser(CancelledByUser<T> value),
    @required TResult serverError(ServerError<T> value),
    @required TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    @required TResult cannotFindUser(CannotFindUser<T> value),
  }) {
    assert(empty != null);
    assert(unexpected != null);
    assert(validateEmailNotEmpty != null);
    assert(insufficientPermission != null);
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyExist != null);
    assert(cannotFindUser != null);
    return cannotFindUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(_Empty<T> value),
    TResult unexpected(_Unexpected<T> value),
    TResult validateEmailNotEmpty(_ValidateEmailNotEmpty<T> value),
    TResult insufficientPermission(_InsufficientPermission<T> value),
    TResult cancelledByUser(CancelledByUser<T> value),
    TResult serverError(ServerError<T> value),
    TResult emailAlreadyExist(EmailAlreadyExist<T> value),
    TResult cannotFindUser(CannotFindUser<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cannotFindUser != null) {
      return cannotFindUser(this);
    }
    return orElse();
  }
}

abstract class CannotFindUser<T> implements AddUserFailures<T> {
  const factory CannotFindUser() = _$CannotFindUser<T>;
}
