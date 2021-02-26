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
  _UserReceived userReceived(
      Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers) {
    return _UserReceived(
      failureOrUsers,
    );
  }

// ignore: unused_element
  _Deleted deleted(HomeUserEntity homeUserEntity) {
    return _Deleted(
      homeUserEntity,
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
    @required
        TResult userReceived(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    @required TResult deleted(HomeUserEntity homeUserEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult userReceived(
        Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    TResult deleted(HomeUserEntity homeUserEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult userReceived(_UserReceived value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult userReceived(_UserReceived value),
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
    @required
        TResult userReceived(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    @required TResult deleted(HomeUserEntity homeUserEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult userReceived(
        Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    TResult deleted(HomeUserEntity homeUserEntity),
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
    @required TResult userReceived(_UserReceived value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult userReceived(_UserReceived value),
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
    @required
        TResult userReceived(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    @required TResult deleted(HomeUserEntity homeUserEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return addByEmail(mail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult userReceived(
        Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    TResult deleted(HomeUserEntity homeUserEntity),
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
    @required TResult userReceived(_UserReceived value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return addByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult userReceived(_UserReceived value),
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
abstract class _$UserReceivedCopyWith<$Res> {
  factory _$UserReceivedCopyWith(
          _UserReceived value, $Res Function(_UserReceived) then) =
      __$UserReceivedCopyWithImpl<$Res>;
  $Res call({Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers});
}

/// @nodoc
class __$UserReceivedCopyWithImpl<$Res>
    extends _$ManageUsersEventCopyWithImpl<$Res>
    implements _$UserReceivedCopyWith<$Res> {
  __$UserReceivedCopyWithImpl(
      _UserReceived _value, $Res Function(_UserReceived) _then)
      : super(_value, (v) => _then(v as _UserReceived));

  @override
  _UserReceived get _value => super._value as _UserReceived;

  @override
  $Res call({
    Object failureOrUsers = freezed,
  }) {
    return _then(_UserReceived(
      failureOrUsers == freezed
          ? _value.failureOrUsers
          : failureOrUsers as Either<HomeUserFailures, KtList<HomeUserEntity>>,
    ));
  }
}

/// @nodoc
class _$_UserReceived implements _UserReceived {
  const _$_UserReceived(this.failureOrUsers) : assert(failureOrUsers != null);

  @override
  final Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers;

  @override
  String toString() {
    return 'ManageUsersEvent.userReceived(failureOrUsers: $failureOrUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserReceived &&
            (identical(other.failureOrUsers, failureOrUsers) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUsers, failureOrUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUsers);

  @JsonKey(ignore: true)
  @override
  _$UserReceivedCopyWith<_UserReceived> get copyWith =>
      __$UserReceivedCopyWithImpl<_UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult addByEmail(String mail),
    @required
        TResult userReceived(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    @required TResult deleted(HomeUserEntity homeUserEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return userReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult userReceived(
        Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    TResult deleted(HomeUserEntity homeUserEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult userReceived(_UserReceived value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult userReceived(_UserReceived value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class _UserReceived implements ManageUsersEvent {
  const factory _UserReceived(
          Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers) =
      _$_UserReceived;

  Either<HomeUserFailures, KtList<HomeUserEntity>> get failureOrUsers;
  @JsonKey(ignore: true)
  _$UserReceivedCopyWith<_UserReceived> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({HomeUserEntity homeUserEntity});

  $HomeUserEntityCopyWith<$Res> get homeUserEntity;
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
    Object homeUserEntity = freezed,
  }) {
    return _then(_Deleted(
      homeUserEntity == freezed
          ? _value.homeUserEntity
          : homeUserEntity as HomeUserEntity,
    ));
  }

  @override
  $HomeUserEntityCopyWith<$Res> get homeUserEntity {
    if (_value.homeUserEntity == null) {
      return null;
    }
    return $HomeUserEntityCopyWith<$Res>(_value.homeUserEntity, (value) {
      return _then(_value.copyWith(homeUserEntity: value));
    });
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.homeUserEntity) : assert(homeUserEntity != null);

  @override
  final HomeUserEntity homeUserEntity;

  @override
  String toString() {
    return 'ManageUsersEvent.deleted(homeUserEntity: $homeUserEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.homeUserEntity, homeUserEntity) ||
                const DeepCollectionEquality()
                    .equals(other.homeUserEntity, homeUserEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeUserEntity);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult addByEmail(String mail),
    @required
        TResult userReceived(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    @required TResult deleted(HomeUserEntity homeUserEntity),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return deleted(homeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult addByEmail(String mail),
    TResult userReceived(
        Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers),
    TResult deleted(HomeUserEntity homeUserEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(homeUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult addByEmail(_AddByEmail value),
    @required TResult userReceived(_UserReceived value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(initialized != null);
    assert(addByEmail != null);
    assert(userReceived != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult addByEmail(_AddByEmail value),
    TResult userReceived(_UserReceived value),
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
  const factory _Deleted(HomeUserEntity homeUserEntity) = _$_Deleted;

  HomeUserEntity get homeUserEntity;
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
  _LoadSuccess loadSuccess(KtList<HomeUserEntity> homeUsers) {
    return _LoadSuccess(
      homeUsers,
    );
  }

// ignore: unused_element
  _AddSuccess addSuccess(String email) {
    return _AddSuccess(
      email,
    );
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(HomeUserFailures<dynamic> homeUserFailures) {
    return _DeleteFailure(
      homeUserFailures,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

// ignore: unused_element
  _loadFailure loadFailure(HomeUserFailures<dynamic> homeUserFailure) {
    return _loadFailure(
      homeUserFailure,
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
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
  $Res call({KtList<HomeUserEntity> homeUsers});
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
    Object homeUsers = freezed,
  }) {
    return _then(_LoadSuccess(
      homeUsers == freezed
          ? _value.homeUsers
          : homeUsers as KtList<HomeUserEntity>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.homeUsers) : assert(homeUsers != null);

  @override
  final KtList<HomeUserEntity> homeUsers;

  @override
  String toString() {
    return 'ManageUsersState.loadSuccess(homeUsers: $homeUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.homeUsers, homeUsers) ||
                const DeepCollectionEquality()
                    .equals(other.homeUsers, homeUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homeUsers);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    return loadSuccess(homeUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(homeUsers);
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
  const factory _LoadSuccess(KtList<HomeUserEntity> homeUsers) = _$_LoadSuccess;

  KtList<HomeUserEntity> get homeUsers;
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
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
  $Res call({HomeUserFailures<dynamic> homeUserFailures});

  $HomeUserFailuresCopyWith<dynamic, $Res> get homeUserFailures;
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
    Object homeUserFailures = freezed,
  }) {
    return _then(_DeleteFailure(
      homeUserFailures == freezed
          ? _value.homeUserFailures
          : homeUserFailures as HomeUserFailures<dynamic>,
    ));
  }

  @override
  $HomeUserFailuresCopyWith<dynamic, $Res> get homeUserFailures {
    if (_value.homeUserFailures == null) {
      return null;
    }
    return $HomeUserFailuresCopyWith<dynamic, $Res>(_value.homeUserFailures,
        (value) {
      return _then(_value.copyWith(homeUserFailures: value));
    });
  }
}

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.homeUserFailures)
      : assert(homeUserFailures != null);

  @override
  final HomeUserFailures<dynamic> homeUserFailures;

  @override
  String toString() {
    return 'ManageUsersState.deleteFailure(homeUserFailures: $homeUserFailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.homeUserFailures, homeUserFailures) ||
                const DeepCollectionEquality()
                    .equals(other.homeUserFailures, homeUserFailures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeUserFailures);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    return deleteFailure(homeUserFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(homeUserFailures);
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
  const factory _DeleteFailure(HomeUserFailures<dynamic> homeUserFailures) =
      _$_DeleteFailure;

  HomeUserFailures<dynamic> get homeUserFailures;
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
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
  $Res call({HomeUserFailures<dynamic> homeUserFailure});

  $HomeUserFailuresCopyWith<dynamic, $Res> get homeUserFailure;
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
    Object homeUserFailure = freezed,
  }) {
    return _then(_loadFailure(
      homeUserFailure == freezed
          ? _value.homeUserFailure
          : homeUserFailure as HomeUserFailures<dynamic>,
    ));
  }

  @override
  $HomeUserFailuresCopyWith<dynamic, $Res> get homeUserFailure {
    if (_value.homeUserFailure == null) {
      return null;
    }
    return $HomeUserFailuresCopyWith<dynamic, $Res>(_value.homeUserFailure,
        (value) {
      return _then(_value.copyWith(homeUserFailure: value));
    });
  }
}

/// @nodoc
class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.homeUserFailure) : assert(homeUserFailure != null);

  @override
  final HomeUserFailures<dynamic> homeUserFailure;

  @override
  String toString() {
    return 'ManageUsersState.loadFailure(homeUserFailure: $homeUserFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _loadFailure &&
            (identical(other.homeUserFailure, homeUserFailure) ||
                const DeepCollectionEquality()
                    .equals(other.homeUserFailure, homeUserFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeUserFailure);

  @JsonKey(ignore: true)
  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inProgress(),
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    return loadFailure(homeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inProgress(),
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(homeUserFailure);
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
  const factory _loadFailure(HomeUserFailures<dynamic> homeUserFailure) =
      _$_loadFailure;

  HomeUserFailures<dynamic> get homeUserFailure;
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
    @required TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    @required TResult addSuccess(String email),
    @required TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    @required TResult deleteSuccess(),
    @required TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
    TResult loadSuccess(KtList<HomeUserEntity> homeUsers),
    TResult addSuccess(String email),
    TResult deleteFailure(HomeUserFailures<dynamic> homeUserFailures),
    TResult deleteSuccess(),
    TResult loadFailure(HomeUserFailures<dynamic> homeUserFailure),
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
