// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'manage_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ManageUsersEventTearOff {
  const _$ManageUsersEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  _AddByEmail addByEmail(String mail) {
    return _AddByEmail(
      mail,
    );
  }

// ignore: unused_element
  _Deleted deleted(UserEntity userEntity) {
    return _Deleted(
      userEntity,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ManageUsersEvent = _$ManageUsersEventTearOff();

/// @nodoc
mixin _$ManageUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult addByEmail(String mail),
    @required TResult deleted(UserEntity userEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult deleted(UserEntity userEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ManageUsersEventCopyWith<$Res> {
  factory $ManageUsersEventCopyWith(
          ManageUsersEvent value, $Res Function(ManageUsersEvent) then) =
      _$ManageUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManageUsersEventCopyWithImpl<$Res>
    implements $ManageUsersEventCopyWith<$Res> {
  _$ManageUsersEventCopyWithImpl(this._value, this._then);

  final ManageUsersEvent _value;
  // ignore: unused_field
  final $Res Function(ManageUsersEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ManageUsersEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'ManageUsersEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult addByEmail(String mail),
    @required TResult deleted(UserEntity userEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(deleted != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult deleted(UserEntity userEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ManageUsersEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$AddByEmailCopyWith<$Res> {
  factory _$AddByEmailCopyWith(
          _AddByEmail value, $Res Function(_AddByEmail) then) =
      __$AddByEmailCopyWithImpl<$Res>;
  $Res call({String mail});
}

/// @nodoc
class __$AddByEmailCopyWithImpl<$Res>
    extends _$ManageUsersEventCopyWithImpl<$Res>
    implements _$AddByEmailCopyWith<$Res> {
  __$AddByEmailCopyWithImpl(
      _AddByEmail _value, $Res Function(_AddByEmail) _then)
      : super(_value, (v) => _then(v as _AddByEmail));

  @override
  _AddByEmail get _value => super._value as _AddByEmail;

  @override
  $Res call({
    Object mail = freezed,
  }) {
    return _then(_AddByEmail(
      mail == freezed ? _value.mail : mail as String,
    ));
  }
}

/// @nodoc
class _$_AddByEmail implements _AddByEmail {
  const _$_AddByEmail(this.mail) : assert(mail != null);

  @override
  final String mail;

  @override
  String toString() {
    return 'ManageUsersEvent.addByEmail(mail: $mail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddByEmail &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mail);

  @JsonKey(ignore: true)
  @override
  _$AddByEmailCopyWith<_AddByEmail> get copyWith =>
      __$AddByEmailCopyWithImpl<_AddByEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult addByEmail(String mail),
    @required TResult deleted(UserEntity userEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(deleted != null);
    return addByEmail(mail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult deleted(UserEntity userEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addByEmail != null) {
      return addByEmail(mail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(deleted != null);
    return addByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addByEmail != null) {
      return addByEmail(this);
    }
    return orElse();
  }
}

abstract class _AddByEmail implements ManageUsersEvent {
  const factory _AddByEmail(String mail) = _$_AddByEmail;

  String get mail;
  @JsonKey(ignore: true)
  _$AddByEmailCopyWith<_AddByEmail> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$ManageUsersEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object userEntity = freezed,
  }) {
    return _then(_Deleted(
      userEntity == freezed ? _value.userEntity : userEntity as UserEntity,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get userEntity {
    if (_value.userEntity == null) {
      return null;
    }
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.userEntity) : assert(userEntity != null);

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'ManageUsersEvent.deleted(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.userEntity, userEntity) ||
                const DeepCollectionEquality()
                    .equals(other.userEntity, userEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userEntity);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult addByEmail(String mail),
    @required TResult deleted(UserEntity userEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(deleted != null);
    return deleted(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult deleted(UserEntity userEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ManageUsersEvent {
  const factory _Deleted(UserEntity userEntity) = _$_Deleted;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$ManageUsersStateTearOff {
  const _$ManageUsersStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _InProgress inProgress() {
    return const _InProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<UserEntity> users) {
    return _LoadSuccess(
      users,
    );
  }

// ignore: unused_element
  _AddSuccess addSuccess(String email) {
    return _AddSuccess(
      email,
    );
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(UserFailures<dynamic> userFailures) {
    return _DeleteFailure(
      userFailures,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

// ignore: unused_element
  _loadFailure loadFailure(UserFailures<dynamic> userFailure) {
    return _loadFailure(
      userFailure,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $ManageUsersState = _$ManageUsersStateTearOff();

/// @nodoc
mixin _$ManageUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ManageUsersStateCopyWith<$Res> {
  factory $ManageUsersStateCopyWith(
          ManageUsersState value, $Res Function(ManageUsersState) then) =
      _$ManageUsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManageUsersStateCopyWithImpl<$Res>
    implements $ManageUsersStateCopyWith<$Res> {
  _$ManageUsersStateCopyWithImpl(this._value, this._then);

  final ManageUsersState _value;
  // ignore: unused_field
  final $Res Function(ManageUsersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ManageUsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ManageUsersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res>
    extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$InProgressCopyWith<$Res> {
  __$InProgressCopyWithImpl(
      _InProgress _value, $Res Function(_InProgress) _then)
      : super(_value, (v) => _then(v as _InProgress));

  @override
  _InProgress get _value => super._value as _InProgress;
}

/// @nodoc
class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'ManageUsersState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements ManageUsersState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<UserEntity> users});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(_LoadSuccess(
      users == freezed ? _value.users : users as KtList<UserEntity>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.users) : assert(users != null);

  @override
  final KtList<UserEntity> users;

  @override
  String toString() {
    return 'ManageUsersState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ManageUsersState {
  const factory _LoadSuccess(KtList<UserEntity> users) = _$_LoadSuccess;

  KtList<UserEntity> get users;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$AddSuccessCopyWith<$Res> {
  factory _$AddSuccessCopyWith(
          _AddSuccess value, $Res Function(_AddSuccess) then) =
      __$AddSuccessCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$AddSuccessCopyWithImpl<$Res>
    extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$AddSuccessCopyWith<$Res> {
  __$AddSuccessCopyWithImpl(
      _AddSuccess _value, $Res Function(_AddSuccess) _then)
      : super(_value, (v) => _then(v as _AddSuccess));

  @override
  _AddSuccess get _value => super._value as _AddSuccess;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_AddSuccess(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ManageUsersState.addSuccess(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSuccess &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$AddSuccessCopyWith<_AddSuccess> get copyWith =>
      __$AddSuccessCopyWithImpl<_AddSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return addSuccess(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements ManageUsersState {
  const factory _AddSuccess(String email) = _$_AddSuccess;

  String get email;
  @JsonKey(ignore: true)
  _$AddSuccessCopyWith<_AddSuccess> get copyWith;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({UserFailures<dynamic> userFailures});

  $UserFailuresCopyWith<dynamic, $Res> get userFailures;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object userFailures = freezed,
  }) {
    return _then(_DeleteFailure(
      userFailures == freezed
          ? _value.userFailures
          : userFailures as UserFailures<dynamic>,
    ));
  }

  @override
  $UserFailuresCopyWith<dynamic, $Res> get userFailures {
    if (_value.userFailures == null) {
      return null;
    }
    return $UserFailuresCopyWith<dynamic, $Res>(_value.userFailures, (value) {
      return _then(_value.copyWith(userFailures: value));
    });
  }
}

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.userFailures) : assert(userFailures != null);

  @override
  final UserFailures<dynamic> userFailures;

  @override
  String toString() {
    return 'ManageUsersState.deleteFailure(userFailures: $userFailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.userFailures, userFailures) ||
                const DeepCollectionEquality()
                    .equals(other.userFailures, userFailures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userFailures);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return deleteFailure(userFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(userFailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ManageUsersState {
  const factory _DeleteFailure(UserFailures<dynamic> userFailures) =
      _$_DeleteFailure;

  UserFailures<dynamic> get userFailures;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'ManageUsersState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ManageUsersState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$loadFailureCopyWith<$Res> {
  factory _$loadFailureCopyWith(
          _loadFailure value, $Res Function(_loadFailure) then) =
      __$loadFailureCopyWithImpl<$Res>;
  $Res call({UserFailures<dynamic> userFailure});

  $UserFailuresCopyWith<dynamic, $Res> get userFailure;
}

/// @nodoc
class __$loadFailureCopyWithImpl<$Res>
    extends _$ManageUsersStateCopyWithImpl<$Res>
    implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(
      _loadFailure _value, $Res Function(_loadFailure) _then)
      : super(_value, (v) => _then(v as _loadFailure));

  @override
  _loadFailure get _value => super._value as _loadFailure;

  @override
  $Res call({
    Object userFailure = freezed,
  }) {
    return _then(_loadFailure(
      userFailure == freezed
          ? _value.userFailure
          : userFailure as UserFailures<dynamic>,
    ));
  }

  @override
  $UserFailuresCopyWith<dynamic, $Res> get userFailure {
    if (_value.userFailure == null) {
      return null;
    }
    return $UserFailuresCopyWith<dynamic, $Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc
class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.userFailure) : assert(userFailure != null);

  @override
  final UserFailures<dynamic> userFailure;

  @override
  String toString() {
    return 'ManageUsersState.loadFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _loadFailure &&
            (identical(other.userFailure, userFailure) ||
                const DeepCollectionEquality()
                    .equals(other.userFailure, userFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userFailure);

  @JsonKey(ignore: true)
  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadFailure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(userFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements ManageUsersState {
  const factory _loadFailure(UserFailures<dynamic> userFailure) =
      _$_loadFailure;

  UserFailures<dynamic> get userFailure;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ManageUsersStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc
class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'ManageUsersState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<UserEntity> users),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(UserFailures<dynamic> userFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(UserFailures<dynamic> userFailure),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<UserEntity> users),
    TResult addSuccess(String email),
    TResult deleteFailure(UserFailures<dynamic> userFailures),
    TResult deleteSuccess(),
    TResult loadFailure(UserFailures<dynamic> userFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inProgress(_InProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult addSuccess(_AddSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
    @required TResult loadFailure(_loadFailure value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSuccess != null);
    assert(addSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    assert(loadFailure != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inProgress(_InProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult addSuccess(_AddSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    TResult loadFailure(_loadFailure value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ManageUsersState {
  const factory Error() = _$Error;
}
