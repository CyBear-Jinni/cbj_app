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
      @required String name,
      @required KtList<String> scenesActionsToExecute,
      Color backgroundColor,
      IconData icon,
      String image}) {
    return _Scene(
      uniqueId: uniqueId,
      name: name,
      scenesActionsToExecute: scenesActionsToExecute,
      backgroundColor: backgroundColor,
      icon: icon,
      image: image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Scene = _$SceneTearOff();

/// @nodoc
mixin _$Scene {
  UniqueId get uniqueId;

  String get name;

  KtList<String> get scenesActionsToExecute;

  Color get backgroundColor;

  IconData get icon;

  String get image;

  @JsonKey(ignore: true)
  $SceneCopyWith<Scene> get copyWith;
}

/// @nodoc
abstract class $SceneCopyWith<$Res> {
  factory $SceneCopyWith(Scene value, $Res Function(Scene) then) =
      _$SceneCopyWithImpl<$Res>;

  $Res call(
      {UniqueId uniqueId,
      String name,
      KtList<String> scenesActionsToExecute,
      Color backgroundColor,
      IconData icon,
      String image});
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
    Object name = freezed,
    Object scenesActionsToExecute = freezed,
    Object backgroundColor = freezed,
    Object icon = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
      name: name == freezed ? _value.name : name as String,
      scenesActionsToExecute: scenesActionsToExecute == freezed
          ? _value.scenesActionsToExecute
          : scenesActionsToExecute as KtList<String>,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor as Color,
      icon: icon == freezed ? _value.icon : icon as IconData,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$SceneCopyWith<$Res> implements $SceneCopyWith<$Res> {
  factory _$SceneCopyWith(_Scene value, $Res Function(_Scene) then) =
      __$SceneCopyWithImpl<$Res>;

  @override
  $Res call(
      {UniqueId uniqueId,
      String name,
      KtList<String> scenesActionsToExecute,
      Color backgroundColor,
      IconData icon,
      String image});
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
    Object name = freezed,
    Object scenesActionsToExecute = freezed,
    Object backgroundColor = freezed,
    Object icon = freezed,
    Object image = freezed,
  }) {
    return _then(_Scene(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
      name: name == freezed ? _value.name : name as String,
      scenesActionsToExecute: scenesActionsToExecute == freezed
          ? _value.scenesActionsToExecute
          : scenesActionsToExecute as KtList<String>,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor as Color,
      icon: icon == freezed ? _value.icon : icon as IconData,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
class _$_Scene extends _Scene {
  const _$_Scene(
      {@required this.uniqueId,
      @required this.name,
      @required this.scenesActionsToExecute,
      this.backgroundColor,
      this.icon,
      this.image})
      : assert(uniqueId != null),
        assert(name != null),
        assert(scenesActionsToExecute != null),
        super._();

  @override
  final UniqueId uniqueId;
  @override
  final String name;
  @override
  final KtList<String> scenesActionsToExecute;
  @override
  final Color backgroundColor;
  @override
  final IconData icon;
  @override
  final String image;

  @override
  String toString() {
    return 'Scene(uniqueId: $uniqueId, name: $name, scenesActionsToExecute: $scenesActionsToExecute, backgroundColor: $backgroundColor, icon: $icon, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Scene &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.scenesActionsToExecute, scenesActionsToExecute) ||
                const DeepCollectionEquality().equals(
                    other.scenesActionsToExecute, scenesActionsToExecute)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(scenesActionsToExecute) ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$SceneCopyWith<_Scene> get copyWith =>
      __$SceneCopyWithImpl<_Scene>(this, _$identity);
}

abstract class _Scene extends Scene {
  const _Scene._() : super._();

  const factory _Scene(
      {@required UniqueId uniqueId,
      @required String name,
      @required KtList<String> scenesActionsToExecute,
      Color backgroundColor,
      IconData icon,
      String image}) = _$_Scene;

  @override
  UniqueId get uniqueId;

  @override
  String get name;

  @override
  KtList<String> get scenesActionsToExecute;

  @override
  Color get backgroundColor;

  @override
  IconData get icon;

  @override
  String get image;

  @override
  @JsonKey(ignore: true)
  _$SceneCopyWith<_Scene> get copyWith;
}
