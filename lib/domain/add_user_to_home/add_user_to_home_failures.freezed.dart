// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_user_to_home_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddUserToHomeFailuresTearOff {
  const _$AddUserToHomeFailuresTearOff();

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

  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }

  ServerError<T> serverError<T>() {
    return ServerError<T>();
  }

  EmailAlreadyExist<T> emailAlreadyExist<T>() {
    return EmailAlreadyExist<T>();
  }

  CannotFindUser<T> cannotFindUser<T>() {
    return CannotFindUser<T>();
  }
}

/// @nodoc
const $AddUserToHomeFailures = _$AddUserToHomeFailuresTearOff();

/// @nodoc
mixin _$AddUserToHomeFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function() unexpected,
    required TResult Function() validateEmailNotEmpty,
    required TResult Function() insufficientPermission,
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserToHomeFailuresCopyWith<T, $Res> {
  factory $AddUserToHomeFailuresCopyWith(AddUserToHomeFailures<T> value,
          $Res Function(AddUserToHomeFailures<T>) then) =
      _$AddUserToHomeFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
    implements $AddUserToHomeFailuresCopyWith<T, $Res> {
  _$AddUserToHomeFailuresCopyWithImpl(this._value, this._then);

  final AddUserToHomeFailures<T> _value;
  // ignore: unused_field
  final $Res Function(AddUserToHomeFailures<T>) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res>
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.empty(failedValue: $failedValue)';
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
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
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
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
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.unexpected()';
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
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
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
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
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.validateEmailNotEmpty()';
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
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
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
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
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (validateEmailNotEmpty != null) {
      return validateEmailNotEmpty(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailNotEmpty<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.insufficientPermission()';
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
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
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
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
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser<T>);
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError<T>);
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.emailAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyExist<T>);
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
  }) {
    return emailAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
    required TResult orElse(),
  }) {
    if (emailAlreadyExist != null) {
      return emailAlreadyExist();
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
  }) {
    return emailAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (emailAlreadyExist != null) {
      return emailAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyExist<T> implements AddUserToHomeFailures<T> {
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
    extends _$AddUserToHomeFailuresCopyWithImpl<T, $Res>
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
    return 'AddUserToHomeFailures<$T>.cannotFindUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CannotFindUser<T>);
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyExist,
    required TResult Function() cannotFindUser,
  }) {
    return cannotFindUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function()? unexpected,
    TResult Function()? validateEmailNotEmpty,
    TResult Function()? insufficientPermission,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyExist,
    TResult Function()? cannotFindUser,
    required TResult orElse(),
  }) {
    if (cannotFindUser != null) {
      return cannotFindUser();
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
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyExist<T> value) emailAlreadyExist,
    required TResult Function(CannotFindUser<T> value) cannotFindUser,
  }) {
    return cannotFindUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_ValidateEmailNotEmpty<T> value)? validateEmailNotEmpty,
    TResult Function(_InsufficientPermission<T> value)? insufficientPermission,
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyExist<T> value)? emailAlreadyExist,
    TResult Function(CannotFindUser<T> value)? cannotFindUser,
    required TResult orElse(),
  }) {
    if (cannotFindUser != null) {
      return cannotFindUser(this);
    }
    return orElse();
  }
}

abstract class CannotFindUser<T> implements AddUserToHomeFailures<T> {
  const factory CannotFindUser() = _$CannotFindUser<T>;
}
