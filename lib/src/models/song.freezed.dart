// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Album get album => throw _privateConstructorUsedError;
  String? get mvId => throw _privateConstructorUsedError;

  /// Serializes this Song to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<Artist> artists,
      Duration duration,
      Album album,
      String? mvId});

  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? duration = null,
    Object? album = null,
    Object? mvId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      mvId: freezed == mvId
          ? _value.mvId
          : mvId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongImplCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$SongImplCopyWith(
          _$SongImpl value, $Res Function(_$SongImpl) then) =
      __$$SongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<Artist> artists,
      Duration duration,
      Album album,
      String? mvId});

  @override
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$SongImplCopyWithImpl<$Res>
    extends _$SongCopyWithImpl<$Res, _$SongImpl>
    implements _$$SongImplCopyWith<$Res> {
  __$$SongImplCopyWithImpl(_$SongImpl _value, $Res Function(_$SongImpl) _then)
      : super(_value, _then);

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? duration = null,
    Object? album = null,
    Object? mvId = freezed,
  }) {
    return _then(_$SongImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      mvId: freezed == mvId
          ? _value.mvId
          : mvId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongImpl implements _Song {
  const _$SongImpl(
      {required this.id,
      required this.name,
      required final List<Artist> artists,
      required this.duration,
      required this.album,
      this.mvId})
      : _artists = artists;

  factory _$SongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final Duration duration;
  @override
  final Album album;
  @override
  final String? mvId;

  @override
  String toString() {
    return 'Song(id: $id, name: $name, artists: $artists, duration: $duration, album: $album, mvId: $mvId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.mvId, mvId) || other.mvId == mvId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_artists), duration, album, mvId);

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      __$$SongImplCopyWithImpl<_$SongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongImplToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  const factory _Song(
      {required final String id,
      required final String name,
      required final List<Artist> artists,
      required final Duration duration,
      required final Album album,
      final String? mvId}) = _$SongImpl;

  factory _Song.fromJson(Map<String, dynamic> json) = _$SongImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Artist> get artists;
  @override
  Duration get duration;
  @override
  Album get album;
  @override
  String? get mvId;

  /// Create a copy of Song
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
