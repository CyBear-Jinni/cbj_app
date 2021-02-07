// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scene.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SceneTearOff {
  const _$SceneTearOff();

// ignore: unused_element
  _Scene call(
      {@required UniqueId uniqueId,
      @required KtList<String> scenesActionsToExecute}) {
    return _Scene(
      uniqueId: uniqueId,
      scenesActionsToExecute: scenesActionsToExecute,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Scene = _$SceneTearOff();

/// @nodoc
mixin _$Scene {
  UniqueId get uniqueId;

  KtList<String> get scenesActionsToExecute;

  @JsonKey(ignore: true)
  $SceneCopyWith<Scene> get copyWith;
}

/// @nodoc
abstract class $SceneCopyWith<$Res> {
  factory $SceneCopyWith(Scene value, $Res Function(Scene) then) =
      _$SceneCopyWithImpl<$Res>;

  $Res call({UniqueId uniqueId, KtList<String> scenesActionsToExecute});
}

/// @nodoc
class _$SceneCopyWithImpl<$Res> implements $SceneCopyWith<$Res> {
  _$SceneCopyWithImpl(this._value, this._then);

  final Scene _value;

  // ignore: unused_field
  final $Res Function(Scene) _then;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object scenesActionsToExecute = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
      scenesActionsToExecute: scenesActionsToExecute == freezed
          ? _value.scenesActionsToExecute
          : scenesActionsToExecute as KtList<String>,
    ));
  }
}

/// @nodoc
abstract class _$SceneCopyWith<$Res> implements $SceneCopyWith<$Res> {
  factory _$SceneCopyWith(_Scene value, $Res Function(_Scene) then) =
      __$SceneCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId uniqueId, KtList<String> scenesActionsToExecute});
}

/// @nodoc
class __$SceneCopyWithImpl<$Res> extends _$SceneCopyWithImpl<$Res>
    implements _$SceneCopyWith<$Res> {
  __$SceneCopyWithImpl(_Scene _value, $Res Function(_Scene) _then)
      : super(_value, (v) => _then(v as _Scene));

  @override
  _Scene get _value => super._value as _Scene;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object scenesActionsToExecute = freezed,
  }) {
    return _then(_Scene(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
      scenesActionsToExecute: scenesActionsToExecute == freezed
          ? _value.scenesActionsToExecute
          : scenesActionsToExecute as KtList<String>,
    ));
  }
}

/// @nodoc
class _$_Scene extends _Scene {
  const _$_Scene(
      {@required this.uniqueId, @required this.scenesActionsToExecute})
      : assert(uniqueId != null),
        assert(scenesActionsToExecute != null),
        super._();

  @override
  final UniqueId uniqueId;
  @override
  final KtList<String> scenesActionsToExecute;

  @override
  String toString() {
    return 'Scene(uniqueId: $uniqueId, scenesActionsToExecute: $scenesActionsToExecute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Scene &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.scenesActionsToExecute, scenesActionsToExecute) ||
                const DeepCollectionEquality().equals(
                    other.scenesActionsToExecute, scenesActionsToExecute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(scenesActionsToExecute);

  @JsonKey(ignore: true)
  @override
  _$SceneCopyWith<_Scene> get copyWith =>
      __$SceneCopyWithImpl<_Scene>(this, _$identity);
}

abstract class _Scene extends Scene {
  const _Scene._() : super._();

  const factory _Scene(
      {@required UniqueId uniqueId,
      @required KtList<String> scenesActionsToExecute}) = _$_Scene;

  @override
  UniqueId get uniqueId;

  @override
  KtList<String> get scenesActionsToExecute;

  @override
  @JsonKey(ignore: true)
  _$SceneCopyWith<_Scene> get copyWith;
}
