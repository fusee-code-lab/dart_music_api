// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumDetail _$AlbumDetailFromJson(Map<String, dynamic> json) {
  return _AlbumDetail.fromJson(json);
}

/// @nodoc
mixin _$AlbumDetail {
  Album get album => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get publishDate => throw _privateConstructorUsedError;
  List<Song> get songs => throw _privateConstructorUsedError;

  /// Serializes this AlbumDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumDetailCopyWith<AlbumDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailCopyWith<$Res> {
  factory $AlbumDetailCopyWith(
          AlbumDetail value, $Res Function(AlbumDetail) then) =
      _$AlbumDetailCopyWithImpl<$Res, AlbumDetail>;
  @useResult
  $Res call(
      {Album album,
      List<Artist> artists,
      String description,
      DateTime publishDate,
      List<Song> songs});

  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$AlbumDetailCopyWithImpl<$Res, $Val extends AlbumDetail>
    implements $AlbumDetailCopyWith<$Res> {
  _$AlbumDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? description = null,
    Object? publishDate = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ) as $Val);
  }

  /// Create a copy of AlbumDetail
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
abstract class _$$AlbumDetailImplCopyWith<$Res>
    implements $AlbumDetailCopyWith<$Res> {
  factory _$$AlbumDetailImplCopyWith(
          _$AlbumDetailImpl value, $Res Function(_$AlbumDetailImpl) then) =
      __$$AlbumDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Album album,
      List<Artist> artists,
      String description,
      DateTime publishDate,
      List<Song> songs});

  @override
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$AlbumDetailImplCopyWithImpl<$Res>
    extends _$AlbumDetailCopyWithImpl<$Res, _$AlbumDetailImpl>
    implements _$$AlbumDetailImplCopyWith<$Res> {
  __$$AlbumDetailImplCopyWithImpl(
      _$AlbumDetailImpl _value, $Res Function(_$AlbumDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? description = null,
    Object? publishDate = null,
    Object? songs = null,
  }) {
    return _then(_$AlbumDetailImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumDetailImpl implements _AlbumDetail {
  const _$AlbumDetailImpl(
      {required this.album,
      required final List<Artist> artists,
      required this.description,
      required this.publishDate,
      required final List<Song> songs})
      : _artists = artists,
        _songs = songs;

  factory _$AlbumDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumDetailImplFromJson(json);

  @override
  final Album album;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final String description;
  @override
  final DateTime publishDate;
  final List<Song> _songs;
  @override
  List<Song> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'AlbumDetail(album: $album, artists: $artists, description: $description, publishDate: $publishDate, songs: $songs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumDetailImpl &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      album,
      const DeepCollectionEquality().hash(_artists),
      description,
      publishDate,
      const DeepCollectionEquality().hash(_songs));

  /// Create a copy of AlbumDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumDetailImplCopyWith<_$AlbumDetailImpl> get copyWith =>
      __$$AlbumDetailImplCopyWithImpl<_$AlbumDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumDetailImplToJson(
      this,
    );
  }
}

abstract class _AlbumDetail implements AlbumDetail {
  const factory _AlbumDetail(
      {required final Album album,
      required final List<Artist> artists,
      required final String description,
      required final DateTime publishDate,
      required final List<Song> songs}) = _$AlbumDetailImpl;

  factory _AlbumDetail.fromJson(Map<String, dynamic> json) =
      _$AlbumDetailImpl.fromJson;

  @override
  Album get album;
  @override
  List<Artist> get artists;
  @override
  String get description;
  @override
  DateTime get publishDate;
  @override
  List<Song> get songs;

  /// Create a copy of AlbumDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumDetailImplCopyWith<_$AlbumDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
