// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'folder_of_scene.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FolderOfScenesTearOff {
  const _$FolderOfScenesTearOff();

// ignore: unused_element
  _FolderOfScenes call(
      {@required UniqueId id,
      @required String name,
      @required KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor,
      KtList<String> folderTags}) {
    return _FolderOfScenes(
      id: id,
      name: name,
      scenesInFolder: scenesInFolder,
      backgroundImageUrl: backgroundImageUrl,
      backgroundColor: backgroundColor,
      folderTags: folderTags,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FolderOfScenes = _$FolderOfScenesTearOff();

/// @nodoc
mixin _$FolderOfScenes {
  UniqueId get id;
  String get name;
  KtList<Scene> get scenesInFolder;
  String get backgroundImageUrl;
  Color get backgroundColor;
  KtList<String> get folderTags;

  @JsonKey(ignore: true)
  $FolderOfScenesCopyWith<FolderOfScenes> get copyWith;
}

/// @nodoc
abstract class $FolderOfScenesCopyWith<$Res> {
  factory $FolderOfScenesCopyWith(
          FolderOfScenes value, $Res Function(FolderOfScenes) then) =
      _$FolderOfScenesCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor,
      KtList<String> folderTags});
}

/// @nodoc
class _$FolderOfScenesCopyWithImpl<$Res>
    implements $FolderOfScenesCopyWith<$Res> {
  _$FolderOfScenesCopyWithImpl(this._value, this._then);

  final FolderOfScenes _value;
  // ignore: unused_field
  final $Res Function(FolderOfScenes) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object scenesInFolder = freezed,
    Object backgroundImageUrl = freezed,
    Object backgroundColor = freezed,
    Object folderTags = freezed,
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
      folderTags: folderTags == freezed
          ? _value.folderTags
          : folderTags as KtList<String>,
    ));
  }
}

/// @nodoc
abstract class _$FolderOfScenesCopyWith<$Res>
    implements $FolderOfScenesCopyWith<$Res> {
  factory _$FolderOfScenesCopyWith(
          _FolderOfScenes value, $Res Function(_FolderOfScenes) then) =
      __$FolderOfScenesCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor,
      KtList<String> folderTags});
}

/// @nodoc
class __$FolderOfScenesCopyWithImpl<$Res>
    extends _$FolderOfScenesCopyWithImpl<$Res>
    implements _$FolderOfScenesCopyWith<$Res> {
  __$FolderOfScenesCopyWithImpl(
      _FolderOfScenes _value, $Res Function(_FolderOfScenes) _then)
      : super(_value, (v) => _then(v as _FolderOfScenes));

  @override
  _FolderOfScenes get _value => super._value as _FolderOfScenes;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object scenesInFolder = freezed,
    Object backgroundImageUrl = freezed,
    Object backgroundColor = freezed,
    Object folderTags = freezed,
  }) {
    return _then(_FolderOfScenes(
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
      folderTags: folderTags == freezed
          ? _value.folderTags
          : folderTags as KtList<String>,
    ));
  }
}

/// @nodoc
class _$_FolderOfScenes extends _FolderOfScenes {
  const _$_FolderOfScenes(
      {@required this.id,
      @required this.name,
      @required this.scenesInFolder,
      this.backgroundImageUrl,
      this.backgroundColor,
      this.folderTags})
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
  final KtList<String> folderTags;

  @override
  String toString() {
    return 'FolderOfScenes(id: $id, name: $name, scenesInFolder: $scenesInFolder, backgroundImageUrl: $backgroundImageUrl, backgroundColor: $backgroundColor, folderTags: $folderTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FolderOfScenes &&
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
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.folderTags, folderTags) ||
                const DeepCollectionEquality()
                    .equals(other.folderTags, folderTags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(scenesInFolder) ^
      const DeepCollectionEquality().hash(backgroundImageUrl) ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(folderTags);

  @JsonKey(ignore: true)
  @override
  _$FolderOfScenesCopyWith<_FolderOfScenes> get copyWith =>
      __$FolderOfScenesCopyWithImpl<_FolderOfScenes>(this, _$identity);
}

abstract class _FolderOfScenes extends FolderOfScenes {
  const _FolderOfScenes._() : super._();
  const factory _FolderOfScenes(
      {@required UniqueId id,
      @required String name,
      @required KtList<Scene> scenesInFolder,
      String backgroundImageUrl,
      Color backgroundColor,
      KtList<String> folderTags}) = _$_FolderOfScenes;

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
  KtList<String> get folderTags;
  @override
  @JsonKey(ignore: true)
  _$FolderOfScenesCopyWith<_FolderOfScenes> get copyWith;
}
