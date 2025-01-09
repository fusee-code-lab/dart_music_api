// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistDetail _$ArtistDetailFromJson(Map<String, dynamic> json) {
  return _ArtistDetail.fromJson(json);
}

/// @nodoc
mixin _$ArtistDetail {
  Artist get artist => throw _privateConstructorUsedError;
  int get albumCount => throw _privateConstructorUsedError;
  int get musicCount => throw _privateConstructorUsedError;
  int get mvCount => throw _privateConstructorUsedError;
  String get briefDescription => throw _privateConstructorUsedError;

  /// Serializes this ArtistDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistDetailCopyWith<ArtistDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDetailCopyWith<$Res> {
  factory $ArtistDetailCopyWith(
          ArtistDetail value, $Res Function(ArtistDetail) then) =
      _$ArtistDetailCopyWithImpl<$Res, ArtistDetail>;
  @useResult
  $Res call(
      {Artist artist,
      int albumCount,
      int musicCount,
      int mvCount,
      String briefDescription});

  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class _$ArtistDetailCopyWithImpl<$Res, $Val extends ArtistDetail>
    implements $ArtistDetailCopyWith<$Res> {
  _$ArtistDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? albumCount = null,
    Object? musicCount = null,
    Object? mvCount = null,
    Object? briefDescription = null,
  }) {
    return _then(_value.copyWith(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      albumCount: null == albumCount
          ? _value.albumCount
          : albumCount // ignore: cast_nullable_to_non_nullable
              as int,
      musicCount: null == musicCount
          ? _value.musicCount
          : musicCount // ignore: cast_nullable_to_non_nullable
              as int,
      mvCount: null == mvCount
          ? _value.mvCount
          : mvCount // ignore: cast_nullable_to_non_nullable
              as int,
      briefDescription: null == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ArtistDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistDetailImplCopyWith<$Res>
    implements $ArtistDetailCopyWith<$Res> {
  factory _$$ArtistDetailImplCopyWith(
          _$ArtistDetailImpl value, $Res Function(_$ArtistDetailImpl) then) =
      __$$ArtistDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Artist artist,
      int albumCount,
      int musicCount,
      int mvCount,
      String briefDescription});

  @override
  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class __$$ArtistDetailImplCopyWithImpl<$Res>
    extends _$ArtistDetailCopyWithImpl<$Res, _$ArtistDetailImpl>
    implements _$$ArtistDetailImplCopyWith<$Res> {
  __$$ArtistDetailImplCopyWithImpl(
      _$ArtistDetailImpl _value, $Res Function(_$ArtistDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? albumCount = null,
    Object? musicCount = null,
    Object? mvCount = null,
    Object? briefDescription = null,
  }) {
    return _then(_$ArtistDetailImpl(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      albumCount: null == albumCount
          ? _value.albumCount
          : albumCount // ignore: cast_nullable_to_non_nullable
              as int,
      musicCount: null == musicCount
          ? _value.musicCount
          : musicCount // ignore: cast_nullable_to_non_nullable
              as int,
      mvCount: null == mvCount
          ? _value.mvCount
          : mvCount // ignore: cast_nullable_to_non_nullable
              as int,
      briefDescription: null == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistDetailImpl implements _ArtistDetail {
  const _$ArtistDetailImpl(
      {required this.artist,
      required this.albumCount,
      required this.musicCount,
      required this.mvCount,
      required this.briefDescription});

  factory _$ArtistDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistDetailImplFromJson(json);

  @override
  final Artist artist;
  @override
  final int albumCount;
  @override
  final int musicCount;
  @override
  final int mvCount;
  @override
  final String briefDescription;

  @override
  String toString() {
    return 'ArtistDetail(artist: $artist, albumCount: $albumCount, musicCount: $musicCount, mvCount: $mvCount, briefDescription: $briefDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistDetailImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.albumCount, albumCount) ||
                other.albumCount == albumCount) &&
            (identical(other.musicCount, musicCount) ||
                other.musicCount == musicCount) &&
            (identical(other.mvCount, mvCount) || other.mvCount == mvCount) &&
            (identical(other.briefDescription, briefDescription) ||
                other.briefDescription == briefDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, artist, albumCount, musicCount, mvCount, briefDescription);

  /// Create a copy of ArtistDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistDetailImplCopyWith<_$ArtistDetailImpl> get copyWith =>
      __$$ArtistDetailImplCopyWithImpl<_$ArtistDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistDetailImplToJson(
      this,
    );
  }
}

abstract class _ArtistDetail implements ArtistDetail {
  const factory _ArtistDetail(
      {required final Artist artist,
      required final int albumCount,
      required final int musicCount,
      required final int mvCount,
      required final String briefDescription}) = _$ArtistDetailImpl;

  factory _ArtistDetail.fromJson(Map<String, dynamic> json) =
      _$ArtistDetailImpl.fromJson;

  @override
  Artist get artist;
  @override
  int get albumCount;
  @override
  int get musicCount;
  @override
  int get mvCount;
  @override
  String get briefDescription;

  /// Create a copy of ArtistDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistDetailImplCopyWith<_$ArtistDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
