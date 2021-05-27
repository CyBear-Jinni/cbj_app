// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_homes_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserHomesListEventTearOff {
  const _$UserHomesListEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _JoinExistingHome joinExistingHome(
      AllHomesOfUserEntity? allHomesOfUserEntity) {
    return _JoinExistingHome(
      allHomesOfUserEntity,
    );
  }

  _AllHomesOfUserReceived allHomesOfUserReceived(
      Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
          failureOrAllHomesOfUser) {
    return _AllHomesOfUserReceived(
      failureOrAllHomesOfUser,
    );
  }
}

/// @nodoc
const $UserHomesListEvent = _$UserHomesListEventTearOff();

/// @nodoc
mixin _$UserHomesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)
        joinExistingHome,
    required TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)
        allHomesOfUserReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)?
        joinExistingHome,
    TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)?
        allHomesOfUserReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_JoinExistingHome value) joinExistingHome,
    required TResult Function(_AllHomesOfUserReceived value)
        allHomesOfUserReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_JoinExistingHome value)? joinExistingHome,
    TResult Function(_AllHomesOfUserReceived value)? allHomesOfUserReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHomesListEventCopyWith<$Res> {
  factory $UserHomesListEventCopyWith(
          UserHomesListEvent value, $Res Function(UserHomesListEvent) then) =
      _$UserHomesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserHomesListEventCopyWithImpl<$Res>
    implements $UserHomesListEventCopyWith<$Res> {
  _$UserHomesListEventCopyWithImpl(this._value, this._then);

  final UserHomesListEvent _value;
  // ignore: unused_field
  final $Res Function(UserHomesListEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$UserHomesListEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'UserHomesListEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)
        joinExistingHome,
    required TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)
        allHomesOfUserReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)?
        joinExistingHome,
    TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)?
        allHomesOfUserReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_JoinExistingHome value) joinExistingHome,
    required TResult Function(_AllHomesOfUserReceived value)
        allHomesOfUserReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_JoinExistingHome value)? joinExistingHome,
    TResult Function(_AllHomesOfUserReceived value)? allHomesOfUserReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements UserHomesListEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$JoinExistingHomeCopyWith<$Res> {
  factory _$JoinExistingHomeCopyWith(
          _JoinExistingHome value, $Res Function(_JoinExistingHome) then) =
      __$JoinExistingHomeCopyWithImpl<$Res>;
  $Res call({AllHomesOfUserEntity? allHomesOfUserEntity});

  $AllHomesOfUserEntityCopyWith<$Res>? get allHomesOfUserEntity;
}

/// @nodoc
class __$JoinExistingHomeCopyWithImpl<$Res>
    extends _$UserHomesListEventCopyWithImpl<$Res>
    implements _$JoinExistingHomeCopyWith<$Res> {
  __$JoinExistingHomeCopyWithImpl(
      _JoinExistingHome _value, $Res Function(_JoinExistingHome) _then)
      : super(_value, (v) => _then(v as _JoinExistingHome));

  @override
  _JoinExistingHome get _value => super._value as _JoinExistingHome;

  @override
  $Res call({
    Object? allHomesOfUserEntity = freezed,
  }) {
    return _then(_JoinExistingHome(
      allHomesOfUserEntity == freezed
          ? _value.allHomesOfUserEntity
          : allHomesOfUserEntity // ignore: cast_nullable_to_non_nullable
              as AllHomesOfUserEntity?,
    ));
  }

  @override
  $AllHomesOfUserEntityCopyWith<$Res>? get allHomesOfUserEntity {
    if (_value.allHomesOfUserEntity == null) {
      return null;
    }

    return $AllHomesOfUserEntityCopyWith<$Res>(_value.allHomesOfUserEntity!,
        (value) {
      return _then(_value.copyWith(allHomesOfUserEntity: value));
    });
  }
}

/// @nodoc

class _$_JoinExistingHome implements _JoinExistingHome {
  const _$_JoinExistingHome(this.allHomesOfUserEntity);

  @override
  final AllHomesOfUserEntity? allHomesOfUserEntity;

  @override
  String toString() {
    return 'UserHomesListEvent.joinExistingHome(allHomesOfUserEntity: $allHomesOfUserEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinExistingHome &&
            (identical(other.allHomesOfUserEntity, allHomesOfUserEntity) ||
                const DeepCollectionEquality()
                    .equals(other.allHomesOfUserEntity, allHomesOfUserEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allHomesOfUserEntity);

  @JsonKey(ignore: true)
  @override
  _$JoinExistingHomeCopyWith<_JoinExistingHome> get copyWith =>
      __$JoinExistingHomeCopyWithImpl<_JoinExistingHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)
        joinExistingHome,
    required TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)
        allHomesOfUserReceived,
  }) {
    return joinExistingHome(allHomesOfUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)?
        joinExistingHome,
    TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)?
        allHomesOfUserReceived,
    required TResult orElse(),
  }) {
    if (joinExistingHome != null) {
      return joinExistingHome(allHomesOfUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_JoinExistingHome value) joinExistingHome,
    required TResult Function(_AllHomesOfUserReceived value)
        allHomesOfUserReceived,
  }) {
    return joinExistingHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_JoinExistingHome value)? joinExistingHome,
    TResult Function(_AllHomesOfUserReceived value)? allHomesOfUserReceived,
    required TResult orElse(),
  }) {
    if (joinExistingHome != null) {
      return joinExistingHome(this);
    }
    return orElse();
  }
}

abstract class _JoinExistingHome implements UserHomesListEvent {
  const factory _JoinExistingHome(AllHomesOfUserEntity? allHomesOfUserEntity) =
      _$_JoinExistingHome;

  AllHomesOfUserEntity? get allHomesOfUserEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$JoinExistingHomeCopyWith<_JoinExistingHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AllHomesOfUserReceivedCopyWith<$Res> {
  factory _$AllHomesOfUserReceivedCopyWith(_AllHomesOfUserReceived value,
          $Res Function(_AllHomesOfUserReceived) then) =
      __$AllHomesOfUserReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
          failureOrAllHomesOfUser});
}

/// @nodoc
class __$AllHomesOfUserReceivedCopyWithImpl<$Res>
    extends _$UserHomesListEventCopyWithImpl<$Res>
    implements _$AllHomesOfUserReceivedCopyWith<$Res> {
  __$AllHomesOfUserReceivedCopyWithImpl(_AllHomesOfUserReceived _value,
      $Res Function(_AllHomesOfUserReceived) _then)
      : super(_value, (v) => _then(v as _AllHomesOfUserReceived));

  @override
  _AllHomesOfUserReceived get _value => super._value as _AllHomesOfUserReceived;

  @override
  $Res call({
    Object? failureOrAllHomesOfUser = freezed,
  }) {
    return _then(_AllHomesOfUserReceived(
      failureOrAllHomesOfUser == freezed
          ? _value.failureOrAllHomesOfUser
          : failureOrAllHomesOfUser // ignore: cast_nullable_to_non_nullable
              as Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>,
    ));
  }
}

/// @nodoc

class _$_AllHomesOfUserReceived implements _AllHomesOfUserReceived {
  const _$_AllHomesOfUserReceived(this.failureOrAllHomesOfUser);

  @override
  final Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
      failureOrAllHomesOfUser;

  @override
  String toString() {
    return 'UserHomesListEvent.allHomesOfUserReceived(failureOrAllHomesOfUser: $failureOrAllHomesOfUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllHomesOfUserReceived &&
            (identical(
                    other.failureOrAllHomesOfUser, failureOrAllHomesOfUser) ||
                const DeepCollectionEquality().equals(
                    other.failureOrAllHomesOfUser, failureOrAllHomesOfUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrAllHomesOfUser);

  @JsonKey(ignore: true)
  @override
  _$AllHomesOfUserReceivedCopyWith<_AllHomesOfUserReceived> get copyWith =>
      __$AllHomesOfUserReceivedCopyWithImpl<_AllHomesOfUserReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)
        joinExistingHome,
    required TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)
        allHomesOfUserReceived,
  }) {
    return allHomesOfUserReceived(failureOrAllHomesOfUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(AllHomesOfUserEntity? allHomesOfUserEntity)?
        joinExistingHome,
    TResult Function(
            Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
                failureOrAllHomesOfUser)?
        allHomesOfUserReceived,
    required TResult orElse(),
  }) {
    if (allHomesOfUserReceived != null) {
      return allHomesOfUserReceived(failureOrAllHomesOfUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_JoinExistingHome value) joinExistingHome,
    required TResult Function(_AllHomesOfUserReceived value)
        allHomesOfUserReceived,
  }) {
    return allHomesOfUserReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_JoinExistingHome value)? joinExistingHome,
    TResult Function(_AllHomesOfUserReceived value)? allHomesOfUserReceived,
    required TResult orElse(),
  }) {
    if (allHomesOfUserReceived != null) {
      return allHomesOfUserReceived(this);
    }
    return orElse();
  }
}

abstract class _AllHomesOfUserReceived implements UserHomesListEvent {
  const factory _AllHomesOfUserReceived(
      Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
          failureOrAllHomesOfUser) = _$_AllHomesOfUserReceived;

  Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>
      get failureOrAllHomesOfUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AllHomesOfUserReceivedCopyWith<_AllHomesOfUserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserHomesListStateTearOff {
  const _$UserHomesListStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<AllHomesOfUserEntity> homes) {
    return _LoadSuccess(
      homes,
    );
  }

  _EnterHome enterHome() {
    return const _EnterHome();
  }

  _LoadFailure loadFailure(
      AllHomesOfUserFailures<dynamic> allHomesOfUserFailures) {
    return _LoadFailure(
      allHomesOfUserFailures,
    );
  }

  _LoadFailureEnteringHome loadFailureEnteringHome(
      HomeUserFailures<dynamic> allHomesOfUserFailures) {
    return _LoadFailureEnteringHome(
      allHomesOfUserFailures,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $UserHomesListState = _$UserHomesListStateTearOff();

/// @nodoc
mixin _$UserHomesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHomesListStateCopyWith<$Res> {
  factory $UserHomesListStateCopyWith(
          UserHomesListState value, $Res Function(UserHomesListState) then) =
      _$UserHomesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserHomesListStateCopyWithImpl<$Res>
    implements $UserHomesListStateCopyWith<$Res> {
  _$UserHomesListStateCopyWithImpl(this._value, this._then);

  final UserHomesListState _value;
  // ignore: unused_field
  final $Res Function(UserHomesListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserHomesListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'UserHomesListState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserHomesListState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$UserHomesListStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'UserHomesListState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserHomesListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<AllHomesOfUserEntity> homes});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserHomesListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? homes = freezed,
  }) {
    return _then(_LoadSuccess(
      homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as KtList<AllHomesOfUserEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.homes);

  @override
  final KtList<AllHomesOfUserEntity> homes;

  @override
  String toString() {
    return 'UserHomesListState.loadSuccess(homes: $homes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.homes, homes) ||
                const DeepCollectionEquality().equals(other.homes, homes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homes);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return loadSuccess(homes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(homes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements UserHomesListState {
  const factory _LoadSuccess(KtList<AllHomesOfUserEntity> homes) =
      _$_LoadSuccess;

  KtList<AllHomesOfUserEntity> get homes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EnterHomeCopyWith<$Res> {
  factory _$EnterHomeCopyWith(
          _EnterHome value, $Res Function(_EnterHome) then) =
      __$EnterHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$EnterHomeCopyWithImpl<$Res>
    extends _$UserHomesListStateCopyWithImpl<$Res>
    implements _$EnterHomeCopyWith<$Res> {
  __$EnterHomeCopyWithImpl(_EnterHome _value, $Res Function(_EnterHome) _then)
      : super(_value, (v) => _then(v as _EnterHome));

  @override
  _EnterHome get _value => super._value as _EnterHome;
}

/// @nodoc

class _$_EnterHome implements _EnterHome {
  const _$_EnterHome();

  @override
  String toString() {
    return 'UserHomesListState.enterHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EnterHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return enterHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (enterHome != null) {
      return enterHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return enterHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (enterHome != null) {
      return enterHome(this);
    }
    return orElse();
  }
}

abstract class _EnterHome implements UserHomesListState {
  const factory _EnterHome() = _$_EnterHome;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({AllHomesOfUserFailures<dynamic> allHomesOfUserFailures});

  $AllHomesOfUserFailuresCopyWith<dynamic, $Res> get allHomesOfUserFailures;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserHomesListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? allHomesOfUserFailures = freezed,
  }) {
    return _then(_LoadFailure(
      allHomesOfUserFailures == freezed
          ? _value.allHomesOfUserFailures
          : allHomesOfUserFailures // ignore: cast_nullable_to_non_nullable
              as AllHomesOfUserFailures<dynamic>,
    ));
  }

  @override
  $AllHomesOfUserFailuresCopyWith<dynamic, $Res> get allHomesOfUserFailures {
    return $AllHomesOfUserFailuresCopyWith<dynamic, $Res>(
        _value.allHomesOfUserFailures, (value) {
      return _then(_value.copyWith(allHomesOfUserFailures: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.allHomesOfUserFailures);

  @override
  final AllHomesOfUserFailures<dynamic> allHomesOfUserFailures;

  @override
  String toString() {
    return 'UserHomesListState.loadFailure(allHomesOfUserFailures: $allHomesOfUserFailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.allHomesOfUserFailures, allHomesOfUserFailures) ||
                const DeepCollectionEquality().equals(
                    other.allHomesOfUserFailures, allHomesOfUserFailures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allHomesOfUserFailures);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return loadFailure(allHomesOfUserFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(allHomesOfUserFailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserHomesListState {
  const factory _LoadFailure(
      AllHomesOfUserFailures<dynamic> allHomesOfUserFailures) = _$_LoadFailure;

  AllHomesOfUserFailures<dynamic> get allHomesOfUserFailures =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureEnteringHomeCopyWith<$Res> {
  factory _$LoadFailureEnteringHomeCopyWith(_LoadFailureEnteringHome value,
          $Res Function(_LoadFailureEnteringHome) then) =
      __$LoadFailureEnteringHomeCopyWithImpl<$Res>;
  $Res call({HomeUserFailures<dynamic> allHomesOfUserFailures});

  $HomeUserFailuresCopyWith<dynamic, $Res> get allHomesOfUserFailures;
}

/// @nodoc
class __$LoadFailureEnteringHomeCopyWithImpl<$Res>
    extends _$UserHomesListStateCopyWithImpl<$Res>
    implements _$LoadFailureEnteringHomeCopyWith<$Res> {
  __$LoadFailureEnteringHomeCopyWithImpl(_LoadFailureEnteringHome _value,
      $Res Function(_LoadFailureEnteringHome) _then)
      : super(_value, (v) => _then(v as _LoadFailureEnteringHome));

  @override
  _LoadFailureEnteringHome get _value =>
      super._value as _LoadFailureEnteringHome;

  @override
  $Res call({
    Object? allHomesOfUserFailures = freezed,
  }) {
    return _then(_LoadFailureEnteringHome(
      allHomesOfUserFailures == freezed
          ? _value.allHomesOfUserFailures
          : allHomesOfUserFailures // ignore: cast_nullable_to_non_nullable
              as HomeUserFailures<dynamic>,
    ));
  }

  @override
  $HomeUserFailuresCopyWith<dynamic, $Res> get allHomesOfUserFailures {
    return $HomeUserFailuresCopyWith<dynamic, $Res>(
        _value.allHomesOfUserFailures, (value) {
      return _then(_value.copyWith(allHomesOfUserFailures: value));
    });
  }
}

/// @nodoc

class _$_LoadFailureEnteringHome implements _LoadFailureEnteringHome {
  const _$_LoadFailureEnteringHome(this.allHomesOfUserFailures);

  @override
  final HomeUserFailures<dynamic> allHomesOfUserFailures;

  @override
  String toString() {
    return 'UserHomesListState.loadFailureEnteringHome(allHomesOfUserFailures: $allHomesOfUserFailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailureEnteringHome &&
            (identical(other.allHomesOfUserFailures, allHomesOfUserFailures) ||
                const DeepCollectionEquality().equals(
                    other.allHomesOfUserFailures, allHomesOfUserFailures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allHomesOfUserFailures);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureEnteringHomeCopyWith<_LoadFailureEnteringHome> get copyWith =>
      __$LoadFailureEnteringHomeCopyWithImpl<_LoadFailureEnteringHome>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return loadFailureEnteringHome(allHomesOfUserFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadFailureEnteringHome != null) {
      return loadFailureEnteringHome(allHomesOfUserFailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return loadFailureEnteringHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadFailureEnteringHome != null) {
      return loadFailureEnteringHome(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureEnteringHome implements UserHomesListState {
  const factory _LoadFailureEnteringHome(
          HomeUserFailures<dynamic> allHomesOfUserFailures) =
      _$_LoadFailureEnteringHome;

  HomeUserFailures<dynamic> get allHomesOfUserFailures =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureEnteringHomeCopyWith<_LoadFailureEnteringHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$UserHomesListStateCopyWithImpl<$Res>
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
    return 'UserHomesListState.error()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<AllHomesOfUserEntity> homes) loadSuccess,
    required TResult Function() enterHome,
    required TResult Function(
            AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)
        loadFailure,
    required TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)
        loadFailureEnteringHome,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<AllHomesOfUserEntity> homes)? loadSuccess,
    TResult Function()? enterHome,
    TResult Function(AllHomesOfUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailure,
    TResult Function(HomeUserFailures<dynamic> allHomesOfUserFailures)?
        loadFailureEnteringHome,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_EnterHome value) enterHome,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadFailureEnteringHome value)
        loadFailureEnteringHome,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_EnterHome value)? enterHome,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadFailureEnteringHome value)? loadFailureEnteringHome,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserHomesListState {
  const factory Error() = _$Error;
}
