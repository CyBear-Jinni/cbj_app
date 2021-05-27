// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_user_to_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddUserToHomeEventTearOff {
  const _$AddUserToHomeEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PermissionChanged permissionChanged(String permission) {
    return PermissionChanged(
      permission,
    );
  }

  AddUserToHomeByEmail addUserToHomeByEmail(String email) {
    return AddUserToHomeByEmail(
      email,
    );
  }
}

/// @nodoc
const $AddUserToHomeEvent = _$AddUserToHomeEventTearOff();

/// @nodoc
mixin _$AddUserToHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String permission) permissionChanged,
    required TResult Function(String email) addUserToHomeByEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String permission)? permissionChanged,
    TResult Function(String email)? addUserToHomeByEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PermissionChanged value) permissionChanged,
    required TResult Function(AddUserToHomeByEmail value) addUserToHomeByEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PermissionChanged value)? permissionChanged,
    TResult Function(AddUserToHomeByEmail value)? addUserToHomeByEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserToHomeEventCopyWith<$Res> {
  factory $AddUserToHomeEventCopyWith(
          AddUserToHomeEvent value, $Res Function(AddUserToHomeEvent) then) =
      _$AddUserToHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserToHomeEventCopyWithImpl<$Res>
    implements $AddUserToHomeEventCopyWith<$Res> {
  _$AddUserToHomeEventCopyWithImpl(this._value, this._then);

  final AddUserToHomeEvent _value;
  // ignore: unused_field
  final $Res Function(AddUserToHomeEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$AddUserToHomeEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AddUserToHomeEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String permission) permissionChanged,
    required TResult Function(String email) addUserToHomeByEmail,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String permission)? permissionChanged,
    TResult Function(String email)? addUserToHomeByEmail,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PermissionChanged value) permissionChanged,
    required TResult Function(AddUserToHomeByEmail value) addUserToHomeByEmail,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PermissionChanged value)? permissionChanged,
    TResult Function(AddUserToHomeByEmail value)? addUserToHomeByEmail,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AddUserToHomeEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionChangedCopyWith<$Res> {
  factory $PermissionChangedCopyWith(
          PermissionChanged value, $Res Function(PermissionChanged) then) =
      _$PermissionChangedCopyWithImpl<$Res>;
  $Res call({String permission});
}

/// @nodoc
class _$PermissionChangedCopyWithImpl<$Res>
    extends _$AddUserToHomeEventCopyWithImpl<$Res>
    implements $PermissionChangedCopyWith<$Res> {
  _$PermissionChangedCopyWithImpl(
      PermissionChanged _value, $Res Function(PermissionChanged) _then)
      : super(_value, (v) => _then(v as PermissionChanged));

  @override
  PermissionChanged get _value => super._value as PermissionChanged;

  @override
  $Res call({
    Object? permission = freezed,
  }) {
    return _then(PermissionChanged(
      permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermissionChanged implements PermissionChanged {
  const _$PermissionChanged(this.permission);

  @override
  final String permission;

  @override
  String toString() {
    return 'AddUserToHomeEvent.permissionChanged(permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PermissionChanged &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(permission);

  @JsonKey(ignore: true)
  @override
  $PermissionChangedCopyWith<PermissionChanged> get copyWith =>
      _$PermissionChangedCopyWithImpl<PermissionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String permission) permissionChanged,
    required TResult Function(String email) addUserToHomeByEmail,
  }) {
    return permissionChanged(permission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String permission)? permissionChanged,
    TResult Function(String email)? addUserToHomeByEmail,
    required TResult orElse(),
  }) {
    if (permissionChanged != null) {
      return permissionChanged(permission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PermissionChanged value) permissionChanged,
    required TResult Function(AddUserToHomeByEmail value) addUserToHomeByEmail,
  }) {
    return permissionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PermissionChanged value)? permissionChanged,
    TResult Function(AddUserToHomeByEmail value)? addUserToHomeByEmail,
    required TResult orElse(),
  }) {
    if (permissionChanged != null) {
      return permissionChanged(this);
    }
    return orElse();
  }
}

abstract class PermissionChanged implements AddUserToHomeEvent {
  const factory PermissionChanged(String permission) = _$PermissionChanged;

  String get permission => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionChangedCopyWith<PermissionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserToHomeByEmailCopyWith<$Res> {
  factory $AddUserToHomeByEmailCopyWith(AddUserToHomeByEmail value,
          $Res Function(AddUserToHomeByEmail) then) =
      _$AddUserToHomeByEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$AddUserToHomeByEmailCopyWithImpl<$Res>
    extends _$AddUserToHomeEventCopyWithImpl<$Res>
    implements $AddUserToHomeByEmailCopyWith<$Res> {
  _$AddUserToHomeByEmailCopyWithImpl(
      AddUserToHomeByEmail _value, $Res Function(AddUserToHomeByEmail) _then)
      : super(_value, (v) => _then(v as AddUserToHomeByEmail));

  @override
  AddUserToHomeByEmail get _value => super._value as AddUserToHomeByEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(AddUserToHomeByEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddUserToHomeByEmail implements AddUserToHomeByEmail {
  const _$AddUserToHomeByEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AddUserToHomeEvent.addUserToHomeByEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddUserToHomeByEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $AddUserToHomeByEmailCopyWith<AddUserToHomeByEmail> get copyWith =>
      _$AddUserToHomeByEmailCopyWithImpl<AddUserToHomeByEmail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String permission) permissionChanged,
    required TResult Function(String email) addUserToHomeByEmail,
  }) {
    return addUserToHomeByEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String permission)? permissionChanged,
    TResult Function(String email)? addUserToHomeByEmail,
    required TResult orElse(),
  }) {
    if (addUserToHomeByEmail != null) {
      return addUserToHomeByEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PermissionChanged value) permissionChanged,
    required TResult Function(AddUserToHomeByEmail value) addUserToHomeByEmail,
  }) {
    return addUserToHomeByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PermissionChanged value)? permissionChanged,
    TResult Function(AddUserToHomeByEmail value)? addUserToHomeByEmail,
    required TResult orElse(),
  }) {
    if (addUserToHomeByEmail != null) {
      return addUserToHomeByEmail(this);
    }
    return orElse();
  }
}

abstract class AddUserToHomeByEmail implements AddUserToHomeEvent {
  const factory AddUserToHomeByEmail(String email) = _$AddUserToHomeByEmail;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddUserToHomeByEmailCopyWith<AddUserToHomeByEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddUserToHomeStateTearOff {
  const _$AddUserToHomeStateTearOff();

  _AddUserToHomeState call(
      {required AddUserToHomeEmail emailAddress,
      required AddUserToHomePermission permission,
      required Option<Either<AddUserToHomeFailures, Unit>>
          addUserFailureOrSuccessOption}) {
    return _AddUserToHomeState(
      emailAddress: emailAddress,
      permission: permission,
      addUserFailureOrSuccessOption: addUserFailureOrSuccessOption,
    );
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  AddingUserSucess addingUserSuccess(String homeId) {
    return AddingUserSucess(
      homeId,
    );
  }

  AddingHomeFauliare addingHomeFailure() {
    return const AddingHomeFauliare();
  }
}

/// @nodoc
const $AddUserToHomeState = _$AddUserToHomeStateTearOff();

/// @nodoc
mixin _$AddUserToHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)
        $default, {
    required TResult Function() actionInProgress,
    required TResult Function(String homeId) addingUserSuccess,
    required TResult Function() addingHomeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)?
        $default, {
    TResult Function()? actionInProgress,
    TResult Function(String homeId)? addingUserSuccess,
    TResult Function()? addingHomeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value) $default, {
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(AddingUserSucess value) addingUserSuccess,
    required TResult Function(AddingHomeFauliare value) addingHomeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value)? $default, {
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(AddingUserSucess value)? addingUserSuccess,
    TResult Function(AddingHomeFauliare value)? addingHomeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserToHomeStateCopyWith<$Res> {
  factory $AddUserToHomeStateCopyWith(
          AddUserToHomeState value, $Res Function(AddUserToHomeState) then) =
      _$AddUserToHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserToHomeStateCopyWithImpl<$Res>
    implements $AddUserToHomeStateCopyWith<$Res> {
  _$AddUserToHomeStateCopyWithImpl(this._value, this._then);

  final AddUserToHomeState _value;
  // ignore: unused_field
  final $Res Function(AddUserToHomeState) _then;
}

/// @nodoc
abstract class _$AddUserToHomeStateCopyWith<$Res> {
  factory _$AddUserToHomeStateCopyWith(
          _AddUserToHomeState value, $Res Function(_AddUserToHomeState) then) =
      __$AddUserToHomeStateCopyWithImpl<$Res>;
  $Res call(
      {AddUserToHomeEmail emailAddress,
      AddUserToHomePermission permission,
      Option<Either<AddUserToHomeFailures, Unit>>
          addUserFailureOrSuccessOption});
}

/// @nodoc
class __$AddUserToHomeStateCopyWithImpl<$Res>
    extends _$AddUserToHomeStateCopyWithImpl<$Res>
    implements _$AddUserToHomeStateCopyWith<$Res> {
  __$AddUserToHomeStateCopyWithImpl(
      _AddUserToHomeState _value, $Res Function(_AddUserToHomeState) _then)
      : super(_value, (v) => _then(v as _AddUserToHomeState));

  @override
  _AddUserToHomeState get _value => super._value as _AddUserToHomeState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? permission = freezed,
    Object? addUserFailureOrSuccessOption = freezed,
  }) {
    return _then(_AddUserToHomeState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as AddUserToHomeEmail,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as AddUserToHomePermission,
      addUserFailureOrSuccessOption: addUserFailureOrSuccessOption == freezed
          ? _value.addUserFailureOrSuccessOption
          : addUserFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AddUserToHomeFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AddUserToHomeState implements _AddUserToHomeState {
  const _$_AddUserToHomeState(
      {required this.emailAddress,
      required this.permission,
      required this.addUserFailureOrSuccessOption});

  @override
  final AddUserToHomeEmail emailAddress;
  @override
  final AddUserToHomePermission permission;
  @override
  final Option<Either<AddUserToHomeFailures, Unit>>
      addUserFailureOrSuccessOption;

  @override
  String toString() {
    return 'AddUserToHomeState(emailAddress: $emailAddress, permission: $permission, addUserFailureOrSuccessOption: $addUserFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddUserToHomeState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.addUserFailureOrSuccessOption,
                    addUserFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.addUserFailureOrSuccessOption,
                    addUserFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(addUserFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AddUserToHomeStateCopyWith<_AddUserToHomeState> get copyWith =>
      __$AddUserToHomeStateCopyWithImpl<_AddUserToHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)
        $default, {
    required TResult Function() actionInProgress,
    required TResult Function(String homeId) addingUserSuccess,
    required TResult Function() addingHomeFailure,
  }) {
    return $default(emailAddress, permission, addUserFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)?
        $default, {
    TResult Function()? actionInProgress,
    TResult Function(String homeId)? addingUserSuccess,
    TResult Function()? addingHomeFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(emailAddress, permission, addUserFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value) $default, {
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(AddingUserSucess value) addingUserSuccess,
    required TResult Function(AddingHomeFauliare value) addingHomeFailure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value)? $default, {
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(AddingUserSucess value)? addingUserSuccess,
    TResult Function(AddingHomeFauliare value)? addingHomeFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AddUserToHomeState implements AddUserToHomeState {
  const factory _AddUserToHomeState(
      {required AddUserToHomeEmail emailAddress,
      required AddUserToHomePermission permission,
      required Option<Either<AddUserToHomeFailures, Unit>>
          addUserFailureOrSuccessOption}) = _$_AddUserToHomeState;

  AddUserToHomeEmail get emailAddress => throw _privateConstructorUsedError;
  AddUserToHomePermission get permission => throw _privateConstructorUsedError;
  Option<Either<AddUserToHomeFailures, Unit>>
      get addUserFailureOrSuccessOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddUserToHomeStateCopyWith<_AddUserToHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$AddUserToHomeStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'AddUserToHomeState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)
        $default, {
    required TResult Function() actionInProgress,
    required TResult Function(String homeId) addingUserSuccess,
    required TResult Function() addingHomeFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)?
        $default, {
    TResult Function()? actionInProgress,
    TResult Function(String homeId)? addingUserSuccess,
    TResult Function()? addingHomeFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value) $default, {
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(AddingUserSucess value) addingUserSuccess,
    required TResult Function(AddingHomeFauliare value) addingHomeFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value)? $default, {
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(AddingUserSucess value)? addingUserSuccess,
    TResult Function(AddingHomeFauliare value)? addingHomeFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements AddUserToHomeState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class $AddingUserSucessCopyWith<$Res> {
  factory $AddingUserSucessCopyWith(
          AddingUserSucess value, $Res Function(AddingUserSucess) then) =
      _$AddingUserSucessCopyWithImpl<$Res>;
  $Res call({String homeId});
}

/// @nodoc
class _$AddingUserSucessCopyWithImpl<$Res>
    extends _$AddUserToHomeStateCopyWithImpl<$Res>
    implements $AddingUserSucessCopyWith<$Res> {
  _$AddingUserSucessCopyWithImpl(
      AddingUserSucess _value, $Res Function(AddingUserSucess) _then)
      : super(_value, (v) => _then(v as AddingUserSucess));

  @override
  AddingUserSucess get _value => super._value as AddingUserSucess;

  @override
  $Res call({
    Object? homeId = freezed,
  }) {
    return _then(AddingUserSucess(
      homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddingUserSucess implements AddingUserSucess {
  const _$AddingUserSucess(this.homeId);

  @override
  final String homeId;

  @override
  String toString() {
    return 'AddUserToHomeState.addingUserSuccess(homeId: $homeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddingUserSucess &&
            (identical(other.homeId, homeId) ||
                const DeepCollectionEquality().equals(other.homeId, homeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homeId);

  @JsonKey(ignore: true)
  @override
  $AddingUserSucessCopyWith<AddingUserSucess> get copyWith =>
      _$AddingUserSucessCopyWithImpl<AddingUserSucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)
        $default, {
    required TResult Function() actionInProgress,
    required TResult Function(String homeId) addingUserSuccess,
    required TResult Function() addingHomeFailure,
  }) {
    return addingUserSuccess(homeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)?
        $default, {
    TResult Function()? actionInProgress,
    TResult Function(String homeId)? addingUserSuccess,
    TResult Function()? addingHomeFailure,
    required TResult orElse(),
  }) {
    if (addingUserSuccess != null) {
      return addingUserSuccess(homeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value) $default, {
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(AddingUserSucess value) addingUserSuccess,
    required TResult Function(AddingHomeFauliare value) addingHomeFailure,
  }) {
    return addingUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value)? $default, {
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(AddingUserSucess value)? addingUserSuccess,
    TResult Function(AddingHomeFauliare value)? addingHomeFailure,
    required TResult orElse(),
  }) {
    if (addingUserSuccess != null) {
      return addingUserSuccess(this);
    }
    return orElse();
  }
}

abstract class AddingUserSucess implements AddUserToHomeState {
  const factory AddingUserSucess(String homeId) = _$AddingUserSucess;

  String get homeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddingUserSucessCopyWith<AddingUserSucess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingHomeFauliareCopyWith<$Res> {
  factory $AddingHomeFauliareCopyWith(
          AddingHomeFauliare value, $Res Function(AddingHomeFauliare) then) =
      _$AddingHomeFauliareCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddingHomeFauliareCopyWithImpl<$Res>
    extends _$AddUserToHomeStateCopyWithImpl<$Res>
    implements $AddingHomeFauliareCopyWith<$Res> {
  _$AddingHomeFauliareCopyWithImpl(
      AddingHomeFauliare _value, $Res Function(AddingHomeFauliare) _then)
      : super(_value, (v) => _then(v as AddingHomeFauliare));

  @override
  AddingHomeFauliare get _value => super._value as AddingHomeFauliare;
}

/// @nodoc

class _$AddingHomeFauliare implements AddingHomeFauliare {
  const _$AddingHomeFauliare();

  @override
  String toString() {
    return 'AddUserToHomeState.addingHomeFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddingHomeFauliare);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)
        $default, {
    required TResult Function() actionInProgress,
    required TResult Function(String homeId) addingUserSuccess,
    required TResult Function() addingHomeFailure,
  }) {
    return addingHomeFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AddUserToHomeEmail emailAddress,
            AddUserToHomePermission permission,
            Option<Either<AddUserToHomeFailures, Unit>>
                addUserFailureOrSuccessOption)?
        $default, {
    TResult Function()? actionInProgress,
    TResult Function(String homeId)? addingUserSuccess,
    TResult Function()? addingHomeFailure,
    required TResult orElse(),
  }) {
    if (addingHomeFailure != null) {
      return addingHomeFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value) $default, {
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(AddingUserSucess value) addingUserSuccess,
    required TResult Function(AddingHomeFauliare value) addingHomeFailure,
  }) {
    return addingHomeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddUserToHomeState value)? $default, {
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(AddingUserSucess value)? addingUserSuccess,
    TResult Function(AddingHomeFauliare value)? addingHomeFailure,
    required TResult orElse(),
  }) {
    if (addingHomeFailure != null) {
      return addingHomeFailure(this);
    }
    return orElse();
  }
}

abstract class AddingHomeFauliare implements AddUserToHomeState {
  const factory AddingHomeFauliare() = _$AddingHomeFauliare;
}
