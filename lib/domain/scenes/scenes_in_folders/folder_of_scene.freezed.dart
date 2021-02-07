// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'folder_of_scene.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FolderOfSceneTearOff {
  const _$FolderOfSceneTearOff();

// ignore: unused_element
  _FolderOfScene call(
      {@required UniqueId id,
      @required String name,
      @required KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor}) {
    return _FolderOfScene(
      id: id,
      name: name,
      scenesInFolder: scenesInFolder,
      backgroundImageUrl: backgroundImageUrl,
      backgroundColor: backgroundColor,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FolderOfScene = _$FolderOfSceneTearOff();

/// @nodoc
mixin _$FolderOfScene {
  UniqueId get id;

  String get name;

  KtList<Scene> get scenesInFolder;

  String get backgroundImageUrl;

  Color get backgroundColor;

  @JsonKey(ignore: true)
  $FolderOfSceneCopyWith<FolderOfScene> get copyWith;
}

/// @nodoc
abstract class $FolderOfSceneCopyWith<$Res> {
  factory $FolderOfSceneCopyWith(
          FolderOfScene value, $Res Function(FolderOfScene) then) =
      _$FolderOfSceneCopyWithImpl<$Res>;

  $Res call(
      {UniqueId id,
      String name,
      KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor});
}

/// @nodoc
class _$FolderOfSceneCopyWithImpl<$Res>
    implements $FolderOfSceneCopyWith<$Res> {
  _$FolderOfSceneCopyWithImpl(this._value, this._then);

  final FolderOfScene _value;

  // ignore: unused_field
  final $Res Function(FolderOfScene) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object scenesInFolder = freezed,
    Object backgroundImageUrl = freezed,
    Object backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      scenesInFolder: scenesInFolder == freezed
          ? _value.scenesInFolder
          : scenesInFolder as KtList<Scene>,
      backgroundImageUrl: backgroundImageUrl == freezed
          ? _value.backgroundImageUrl
          : backgroundImageUrl as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor as Color,
    ));
  }
}

/// @nodoc
abstract class _$FolderOfSceneCopyWith<$Res>
    implements $FolderOfSceneCopyWith<$Res> {
  factory _$FolderOfSceneCopyWith(
          _FolderOfScene value, $Res Function(_FolderOfScene) then) =
      __$FolderOfSceneCopyWithImpl<$Res>;

  @override
  $Res call(
      {UniqueId id,
      String name,
      KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor});
}

/// @nodoc
class __$FolderOfSceneCopyWithImpl<$Res>
    extends _$FolderOfSceneCopyWithImpl<$Res>
    implements _$FolderOfSceneCopyWith<$Res> {
  __$FolderOfSceneCopyWithImpl(
      _FolderOfScene _value, $Res Function(_FolderOfScene) _then)
      : super(_value, (v) => _then(v as _FolderOfScene));

  @override
  _FolderOfScene get _value => super._value as _FolderOfScene;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object scenesInFolder = freezed,
    Object backgroundImageUrl = freezed,
    Object backgroundColor = freezed,
  }) {
    return _then(_FolderOfScene(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      scenesInFolder: scenesInFolder == freezed
          ? _value.scenesInFolder
          : scenesInFolder as KtList<Scene>,
      backgroundImageUrl: backgroundImageUrl == freezed
          ? _value.backgroundImageUrl
          : backgroundImageUrl as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor as Color,
    ));
  }
}

/// @nodoc
class _$_FolderOfScene extends _FolderOfScene {
  const _$_FolderOfScene(
      {@required this.id,
      @required this.name,
      @required this.scenesInFolder,
      this.backgroundImageUrl,
      this.backgroundColor})
      : assert(id != null),
        assert(name != null),
        assert(scenesInFolder != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final KtList<Scene> scenesInFolder;
  @override
  final String backgroundImageUrl;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'FolderOfScene(id: $id, name: $name, scenesInFolder: $scenesInFolder, backgroundImageUrl: $backgroundImageUrl, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FolderOfScene &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.scenesInFolder, scenesInFolder) ||
                const DeepCollectionEquality()
                    .equals(other.scenesInFolder, scenesInFolder)) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundImageUrl, backgroundImageUrl)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(scenesInFolder) ^
      const DeepCollectionEquality().hash(backgroundImageUrl) ^
      const DeepCollectionEquality().hash(backgroundColor);

  @JsonKey(ignore: true)
  @override
  _$FolderOfSceneCopyWith<_FolderOfScene> get copyWith =>
      __$FolderOfSceneCopyWithImpl<_FolderOfScene>(this, _$identity);
}

abstract class _FolderOfScene extends FolderOfScene {
  const _FolderOfScene._() : super._();

  const factory _FolderOfScene(
      {@required UniqueId id,
      @required String name,
      @required KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor}) = _$_FolderOfScene;

  @override
  UniqueId get id;

  @override
  String get name;

  @override
  KtList<Scene> get scenesInFolder;

  @override
  String get backgroundImageUrl;

  @override
  Color get backgroundColor;

  @override
  @JsonKey(ignore: true)
  _$FolderOfSceneCopyWith<_FolderOfScene> get copyWith;
}
