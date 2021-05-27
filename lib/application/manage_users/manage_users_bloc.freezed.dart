// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'manage_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ManageUsersEventTearOff {
  const _$ManageUsersEventTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  _AddByEmail addByEmail(String mail) {
    return _AddByEmail(
      mail,
    );
  }

  _UserReceived userReceived(
      Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers) {
    return _UserReceived(
      failureOrUsers,
    );
  }

  _Deleted deleted(HomeUserEntity homeUserEntity) {
    return _Deleted(
      homeUserEntity,
    );
  }
}

/// @nodoc
const $ManageUsersEvent = _$ManageUsersEventTearOff();

/// @nodoc
mixin _$ManageUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String mail) addByEmail,
    required TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)
        userReceived,
    required TResult Function(HomeUserEntity homeUserEntity) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String mail)? addByEmail,
    TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)?
        userReceived,
    TResult Function(HomeUserEntity homeUserEntity)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_AddByEmail value) addByEmail,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_AddByEmail value)? addByEmail,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String mail) addByEmail,
    required TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)
        userReceived,
    required TResult Function(HomeUserEntity homeUserEntity) deleted,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String mail)? addByEmail,
    TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)?
        userReceived,
    TResult Function(HomeUserEntity homeUserEntity)? deleted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_AddByEmail value) addByEmail,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_AddByEmail value)? addByEmail,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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
    Object? mail = freezed,
  }) {
    return _then(_AddByEmail(
      mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddByEmail implements _AddByEmail {
  const _$_AddByEmail(this.mail);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String mail) addByEmail,
    required TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)
        userReceived,
    required TResult Function(HomeUserEntity homeUserEntity) deleted,
  }) {
    return addByEmail(mail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String mail)? addByEmail,
    TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)?
        userReceived,
    TResult Function(HomeUserEntity homeUserEntity)? deleted,
    required TResult orElse(),
  }) {
    if (addByEmail != null) {
      return addByEmail(mail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_AddByEmail value) addByEmail,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Deleted value) deleted,
  }) {
    return addByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_AddByEmail value)? addByEmail,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (addByEmail != null) {
      return addByEmail(this);
    }
    return orElse();
  }
}

abstract class _AddByEmail implements ManageUsersEvent {
  const factory _AddByEmail(String mail) = _$_AddByEmail;

  String get mail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddByEmailCopyWith<_AddByEmail> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? failureOrUsers = freezed,
  }) {
    return _then(_UserReceived(
      failureOrUsers == freezed
          ? _value.failureOrUsers
          : failureOrUsers // ignore: cast_nullable_to_non_nullable
              as Either<HomeUserFailures, KtList<HomeUserEntity>>,
    ));
  }
}

/// @nodoc

class _$_UserReceived implements _UserReceived {
  const _$_UserReceived(this.failureOrUsers);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String mail) addByEmail,
    required TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)
        userReceived,
    required TResult Function(HomeUserEntity homeUserEntity) deleted,
  }) {
    return userReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String mail)? addByEmail,
    TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)?
        userReceived,
    TResult Function(HomeUserEntity homeUserEntity)? deleted,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_AddByEmail value) addByEmail,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Deleted value) deleted,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_AddByEmail value)? addByEmail,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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

  Either<HomeUserFailures, KtList<HomeUserEntity>> get failureOrUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserReceivedCopyWith<_UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? homeUserEntity = freezed,
  }) {
    return _then(_Deleted(
      homeUserEntity == freezed
          ? _value.homeUserEntity
          : homeUserEntity // ignore: cast_nullable_to_non_nullable
              as HomeUserEntity,
    ));
  }

  @override
  $HomeUserEntityCopyWith<$Res> get homeUserEntity {
    return $HomeUserEntityCopyWith<$Res>(_value.homeUserEntity, (value) {
      return _then(_value.copyWith(homeUserEntity: value));
    });
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.homeUserEntity);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String mail) addByEmail,
    required TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)
        userReceived,
    required TResult Function(HomeUserEntity homeUserEntity) deleted,
  }) {
    return deleted(homeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String mail)? addByEmail,
    TResult Function(
            Either<HomeUserFailures, KtList<HomeUserEntity>> failureOrUsers)?
        userReceived,
    TResult Function(HomeUserEntity homeUserEntity)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(homeUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(_AddByEmail value) addByEmail,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(_AddByEmail value)? addByEmail,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ManageUsersEvent {
  const factory _Deleted(HomeUserEntity homeUserEntity) = _$_Deleted;

  HomeUserEntity get homeUserEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ManageUsersStateTearOff {
  const _$ManageUsersStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _LoadSuccess loadSuccess(KtList<HomeUserEntity> homeUsers) {
    return _LoadSuccess(
      homeUsers,
    );
  }

  _AddSuccess addSuccess(String email) {
    return _AddSuccess(
      email,
    );
  }

  _DeleteFailure deleteFailure(HomeUserFailures<dynamic> homeUserFailures) {
    return _DeleteFailure(
      homeUserFailures,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _loadFailure loadFailure(HomeUserFailures<dynamic> homeUserFailure) {
    return _loadFailure(
      homeUserFailure,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $ManageUsersState = _$ManageUsersStateTearOff();

/// @nodoc
mixin _$ManageUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
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
    Object? homeUsers = freezed,
  }) {
    return _then(_LoadSuccess(
      homeUsers == freezed
          ? _value.homeUsers
          : homeUsers // ignore: cast_nullable_to_non_nullable
              as KtList<HomeUserEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.homeUsers);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadSuccess(homeUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(homeUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ManageUsersState {
  const factory _LoadSuccess(KtList<HomeUserEntity> homeUsers) = _$_LoadSuccess;

  KtList<HomeUserEntity> get homeUsers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? email = freezed,
  }) {
    return _then(_AddSuccess(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess(this.email);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return addSuccess(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements ManageUsersState {
  const factory _AddSuccess(String email) = _$_AddSuccess;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddSuccessCopyWith<_AddSuccess> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? homeUserFailures = freezed,
  }) {
    return _then(_DeleteFailure(
      homeUserFailures == freezed
          ? _value.homeUserFailures
          : homeUserFailures // ignore: cast_nullable_to_non_nullable
              as HomeUserFailures<dynamic>,
    ));
  }

  @override
  $HomeUserFailuresCopyWith<dynamic, $Res> get homeUserFailures {
    return $HomeUserFailuresCopyWith<dynamic, $Res>(_value.homeUserFailures,
        (value) {
      return _then(_value.copyWith(homeUserFailures: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.homeUserFailures);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return deleteFailure(homeUserFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(homeUserFailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ManageUsersState {
  const factory _DeleteFailure(HomeUserFailures<dynamic> homeUserFailures) =
      _$_DeleteFailure;

  HomeUserFailures<dynamic> get homeUserFailures =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
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
    Object? homeUserFailure = freezed,
  }) {
    return _then(_loadFailure(
      homeUserFailure == freezed
          ? _value.homeUserFailure
          : homeUserFailure // ignore: cast_nullable_to_non_nullable
              as HomeUserFailures<dynamic>,
    ));
  }

  @override
  $HomeUserFailuresCopyWith<dynamic, $Res> get homeUserFailure {
    return $HomeUserFailuresCopyWith<dynamic, $Res>(_value.homeUserFailure,
        (value) {
      return _then(_value.copyWith(homeUserFailure: value));
    });
  }
}

/// @nodoc

class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.homeUserFailure);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return loadFailure(homeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(homeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements ManageUsersState {
  const factory _loadFailure(HomeUserFailures<dynamic> homeUserFailure) =
      _$_loadFailure;

  HomeUserFailures<dynamic> get homeUserFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<HomeUserEntity> homeUsers) loadSuccess,
    required TResult Function(String email) addSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailures)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HomeUserFailures<dynamic> homeUserFailure)
        loadFailure,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<HomeUserEntity> homeUsers)? loadSuccess,
    TResult Function(String email)? addSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailures)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HomeUserFailures<dynamic> homeUserFailure)? loadFailure,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_loadFailure value) loadFailure,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_loadFailure value)? loadFailure,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ManageUsersState {
  const factory Error() = _$Error;
}
