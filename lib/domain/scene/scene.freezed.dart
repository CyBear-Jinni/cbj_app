// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scene.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SceneTearOff {
  const _$SceneTearOff();

  _Scene call(
      {required UniqueId uniqueId,
      required String name,
      required KtList<String> scenesActionsToExecute,
      required Color backgroundColor,
      IconData? icon,
      String? image}) {
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
const $Scene = _$SceneTearOff();

/// @nodoc
mixin _$Scene {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  KtList<String> get scenesActionsToExecute =>
      throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SceneCopyWith<Scene> get copyWith => throw _privateConstructorUsedError;
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
      IconData? icon,
      String? image});
}

/// @nodoc
class _$SceneCopyWithImpl<$Res> implements $SceneCopyWith<$Res> {
  _$SceneCopyWithImpl(this._value, this._then);

  final Scene _value;
  // ignore: unused_field
  final $Res Function(Scene) _then;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? name = freezed,
    Object? scenesActionsToExecute = freezed,
    Object? backgroundColor = freezed,
    Object? icon = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scenesActionsToExecute: scenesActionsToExecute == freezed
          ? _value.scenesActionsToExecute
          : scenesActionsToExecute // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      IconData? icon,
      String? image});
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
    Object? uniqueId = freezed,
    Object? name = freezed,
    Object? scenesActionsToExecute = freezed,
    Object? backgroundColor = freezed,
    Object? icon = freezed,
    Object? image = freezed,
  }) {
    return _then(_Scene(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scenesActionsToExecute: scenesActionsToExecute == freezed
          ? _value.scenesActionsToExecute
          : scenesActionsToExecute // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Scene extends _Scene {
  const _$_Scene(
      {required this.uniqueId,
      required this.name,
      required this.scenesActionsToExecute,
      required this.backgroundColor,
      this.icon,
      this.image})
      : super._();

  @override
  final UniqueId uniqueId;
  @override
  final String name;
  @override
  final KtList<String> scenesActionsToExecute;
  @override
  final Color backgroundColor;
  @override
  final IconData? icon;
  @override
  final String? image;

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
  const factory _Scene(
      {required UniqueId uniqueId,
      required String name,
      required KtList<String> scenesActionsToExecute,
      required Color backgroundColor,
      IconData? icon,
      String? image}) = _$_Scene;
  const _Scene._() : super._();

  @override
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  KtList<String> get scenesActionsToExecute =>
      throw _privateConstructorUsedError;
  @override
  Color get backgroundColor => throw _privateConstructorUsedError;
  @override
  IconData? get icon => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SceneCopyWith<_Scene> get copyWith => throw _privateConstructorUsedError;
}
