// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_user_to_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddUserToHomeEventTearOff {
  const _$AddUserToHomeEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PermissionChanged permissionChanged(String permission) {
    return PermissionChanged(
      permission,
    );
  }

// ignore: unused_element
  AddUserToHomeByEmail addUserToHomeByEmail(String email) {
    return AddUserToHomeByEmail(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserToHomeEvent = _$AddUserToHomeEventTearOff();

/// @nodoc
mixin _$AddUserToHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult permissionChanged(String permission),
    @required TResult addUserToHomeByEmail(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult permissionChanged(String permission),
    TResult addUserToHomeByEmail(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult permissionChanged(PermissionChanged value),
    @required TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult permissionChanged(PermissionChanged value),
    TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
    @required TResult orElse(),
  });
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
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult permissionChanged(String permission),
    @required TResult addUserToHomeByEmail(String email),
  }) {
    assert(emailChanged != null);
    assert(permissionChanged != null);
    assert(addUserToHomeByEmail != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult permissionChanged(String permission),
    TResult addUserToHomeByEmail(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult permissionChanged(PermissionChanged value),
    @required TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
  }) {
    assert(emailChanged != null);
    assert(permissionChanged != null);
    assert(addUserToHomeByEmail != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult permissionChanged(PermissionChanged value),
    TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AddUserToHomeEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
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
    Object permission = freezed,
  }) {
    return _then(PermissionChanged(
      permission == freezed ? _value.permission : permission as String,
    ));
  }
}

/// @nodoc
class _$PermissionChanged implements PermissionChanged {
  const _$PermissionChanged(this.permission) : assert(permission != null);

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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult permissionChanged(String permission),
    @required TResult addUserToHomeByEmail(String email),
  }) {
    assert(emailChanged != null);
    assert(permissionChanged != null);
    assert(addUserToHomeByEmail != null);
    return permissionChanged(permission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult permissionChanged(String permission),
    TResult addUserToHomeByEmail(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (permissionChanged != null) {
      return permissionChanged(permission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult permissionChanged(PermissionChanged value),
    @required TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
  }) {
    assert(emailChanged != null);
    assert(permissionChanged != null);
    assert(addUserToHomeByEmail != null);
    return permissionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult permissionChanged(PermissionChanged value),
    TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (permissionChanged != null) {
      return permissionChanged(this);
    }
    return orElse();
  }
}

abstract class PermissionChanged implements AddUserToHomeEvent {
  const factory PermissionChanged(String permission) = _$PermissionChanged;

  String get permission;
  @JsonKey(ignore: true)
  $PermissionChangedCopyWith<PermissionChanged> get copyWith;
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
    Object email = freezed,
  }) {
    return _then(AddUserToHomeByEmail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$AddUserToHomeByEmail implements AddUserToHomeByEmail {
  const _$AddUserToHomeByEmail(this.email) : assert(email != null);

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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult permissionChanged(String permission),
    @required TResult addUserToHomeByEmail(String email),
  }) {
    assert(emailChanged != null);
    assert(permissionChanged != null);
    assert(addUserToHomeByEmail != null);
    return addUserToHomeByEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult permissionChanged(String permission),
    TResult addUserToHomeByEmail(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserToHomeByEmail != null) {
      return addUserToHomeByEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult permissionChanged(PermissionChanged value),
    @required TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
  }) {
    assert(emailChanged != null);
    assert(permissionChanged != null);
    assert(addUserToHomeByEmail != null);
    return addUserToHomeByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult permissionChanged(PermissionChanged value),
    TResult addUserToHomeByEmail(AddUserToHomeByEmail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserToHomeByEmail != null) {
      return addUserToHomeByEmail(this);
    }
    return orElse();
  }
}

abstract class AddUserToHomeByEmail implements AddUserToHomeEvent {
  const factory AddUserToHomeByEmail(String email) = _$AddUserToHomeByEmail;

  String get email;
  @JsonKey(ignore: true)
  $AddUserToHomeByEmailCopyWith<AddUserToHomeByEmail> get copyWith;
}

/// @nodoc
class _$AddUserToHomeStateTearOff {
  const _$AddUserToHomeStateTearOff();

// ignore: unused_element
  _AddUserToHomeState call(
      {@required
          AddUserToHomeEmail emailAddress,
      @required
          AddUserToHomePermission permission,
      @required
          Option<Either<AddUserToHomeFailures, Unit>>
              addUserFailureOrSuccessOption}) {
    return _AddUserToHomeState(
      emailAddress: emailAddress,
      permission: permission,
      addUserFailureOrSuccessOption: addUserFailureOrSuccessOption,
    );
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  AddingUserSucess addingUserSuccess(String homeId) {
    return AddingUserSucess(
      homeId,
    );
  }

// ignore: unused_element
  AddingHomeFauliare addingHomeFailure() {
    return const AddingHomeFauliare();
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserToHomeState = _$AddUserToHomeStateTearOff();

/// @nodoc
mixin _$AddUserToHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    @required TResult actionInProgress(),
    @required TResult addingUserSuccess(String homeId),
    @required TResult addingHomeFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    TResult actionInProgress(),
    TResult addingUserSuccess(String homeId),
    TResult addingHomeFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult addingUserSuccess(AddingUserSucess value),
    @required TResult addingHomeFailure(AddingHomeFauliare value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    TResult actionInProgress(_ActionInProgress value),
    TResult addingUserSuccess(AddingUserSucess value),
    TResult addingHomeFailure(AddingHomeFauliare value),
    @required TResult orElse(),
  });
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
    Object emailAddress = freezed,
    Object permission = freezed,
    Object addUserFailureOrSuccessOption = freezed,
  }) {
    return _then(_AddUserToHomeState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as AddUserToHomeEmail,
      permission: permission == freezed
          ? _value.permission
          : permission as AddUserToHomePermission,
      addUserFailureOrSuccessOption: addUserFailureOrSuccessOption == freezed
          ? _value.addUserFailureOrSuccessOption
          : addUserFailureOrSuccessOption
              as Option<Either<AddUserToHomeFailures, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AddUserToHomeState implements _AddUserToHomeState {
  const _$_AddUserToHomeState(
      {@required this.emailAddress,
      @required this.permission,
      @required this.addUserFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(permission != null),
        assert(addUserFailureOrSuccessOption != null);

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
  TResult when<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    @required TResult actionInProgress(),
    @required TResult addingUserSuccess(String homeId),
    @required TResult addingHomeFailure(),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return $default(emailAddress, permission, addUserFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    TResult actionInProgress(),
    TResult addingUserSuccess(String homeId),
    TResult addingHomeFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(emailAddress, permission, addUserFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult addingUserSuccess(AddingUserSucess value),
    @required TResult addingHomeFailure(AddingHomeFauliare value),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    TResult actionInProgress(_ActionInProgress value),
    TResult addingUserSuccess(AddingUserSucess value),
    TResult addingHomeFailure(AddingHomeFauliare value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AddUserToHomeState implements AddUserToHomeState {
  const factory _AddUserToHomeState(
      {@required
          AddUserToHomeEmail emailAddress,
      @required
          AddUserToHomePermission permission,
      @required
          Option<Either<AddUserToHomeFailures, Unit>>
              addUserFailureOrSuccessOption}) = _$_AddUserToHomeState;

  AddUserToHomeEmail get emailAddress;
  AddUserToHomePermission get permission;
  Option<Either<AddUserToHomeFailures, Unit>> get addUserFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$AddUserToHomeStateCopyWith<_AddUserToHomeState> get copyWith;
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
  TResult when<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    @required TResult actionInProgress(),
    @required TResult addingUserSuccess(String homeId),
    @required TResult addingHomeFailure(),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    TResult actionInProgress(),
    TResult addingUserSuccess(String homeId),
    TResult addingHomeFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult addingUserSuccess(AddingUserSucess value),
    @required TResult addingHomeFailure(AddingHomeFauliare value),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    TResult actionInProgress(_ActionInProgress value),
    TResult addingUserSuccess(AddingUserSucess value),
    TResult addingHomeFailure(AddingHomeFauliare value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object homeId = freezed,
  }) {
    return _then(AddingUserSucess(
      homeId == freezed ? _value.homeId : homeId as String,
    ));
  }
}

/// @nodoc
class _$AddingUserSucess implements AddingUserSucess {
  const _$AddingUserSucess(this.homeId) : assert(homeId != null);

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
  TResult when<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    @required TResult actionInProgress(),
    @required TResult addingUserSuccess(String homeId),
    @required TResult addingHomeFailure(),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return addingUserSuccess(homeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    TResult actionInProgress(),
    TResult addingUserSuccess(String homeId),
    TResult addingHomeFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingUserSuccess != null) {
      return addingUserSuccess(homeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult addingUserSuccess(AddingUserSucess value),
    @required TResult addingHomeFailure(AddingHomeFauliare value),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return addingUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    TResult actionInProgress(_ActionInProgress value),
    TResult addingUserSuccess(AddingUserSucess value),
    TResult addingHomeFailure(AddingHomeFauliare value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingUserSuccess != null) {
      return addingUserSuccess(this);
    }
    return orElse();
  }
}

abstract class AddingUserSucess implements AddUserToHomeState {
  const factory AddingUserSucess(String homeId) = _$AddingUserSucess;

  String get homeId;
  @JsonKey(ignore: true)
  $AddingUserSucessCopyWith<AddingUserSucess> get copyWith;
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
  TResult when<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    @required TResult actionInProgress(),
    @required TResult addingUserSuccess(String homeId),
    @required TResult addingHomeFailure(),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return addingHomeFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        AddUserToHomeEmail emailAddress,
        AddUserToHomePermission permission,
        Option<Either<AddUserToHomeFailures, Unit>>
            addUserFailureOrSuccessOption), {
    TResult actionInProgress(),
    TResult addingUserSuccess(String homeId),
    TResult addingHomeFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingHomeFailure != null) {
      return addingHomeFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult addingUserSuccess(AddingUserSucess value),
    @required TResult addingHomeFailure(AddingHomeFauliare value),
  }) {
    assert($default != null);
    assert(actionInProgress != null);
    assert(addingUserSuccess != null);
    assert(addingHomeFailure != null);
    return addingHomeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AddUserToHomeState value), {
    TResult actionInProgress(_ActionInProgress value),
    TResult addingUserSuccess(AddingUserSucess value),
    TResult addingHomeFailure(AddingHomeFauliare value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingHomeFailure != null) {
      return addingHomeFailure(this);
    }
    return orElse();
  }
}

abstract class AddingHomeFauliare implements AddUserToHomeState {
  const factory AddingHomeFauliare() = _$AddingHomeFauliare;
}
