// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongDetail _$SongDetailFromJson(Map<String, dynamic> json) {
  return _SongDetail.fromJson(json);
}

/// @nodoc
mixin _$SongDetail {
  Song get song => throw _privateConstructorUsedError;
  SongQuality get quality => throw _privateConstructorUsedError;

  /// Serializes this SongDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongDetailCopyWith<SongDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongDetailCopyWith<$Res> {
  factory $SongDetailCopyWith(
          SongDetail value, $Res Function(SongDetail) then) =
      _$SongDetailCopyWithImpl<$Res, SongDetail>;
  @useResult
  $Res call({Song song, SongQuality quality});

  $SongCopyWith<$Res> get song;
  $SongQualityCopyWith<$Res> get quality;
}

/// @nodoc
class _$SongDetailCopyWithImpl<$Res, $Val extends SongDetail>
    implements $SongDetailCopyWith<$Res> {
  _$SongDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? quality = null,
  }) {
    return _then(_value.copyWith(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as SongQuality,
    ) as $Val);
  }

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongQualityCopyWith<$Res> get quality {
    return $SongQualityCopyWith<$Res>(_value.quality, (value) {
      return _then(_value.copyWith(quality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongDetailImplCopyWith<$Res>
    implements $SongDetailCopyWith<$Res> {
  factory _$$SongDetailImplCopyWith(
          _$SongDetailImpl value, $Res Function(_$SongDetailImpl) then) =
      __$$SongDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Song song, SongQuality quality});

  @override
  $SongCopyWith<$Res> get song;
  @override
  $SongQualityCopyWith<$Res> get quality;
}

/// @nodoc
class __$$SongDetailImplCopyWithImpl<$Res>
    extends _$SongDetailCopyWithImpl<$Res, _$SongDetailImpl>
    implements _$$SongDetailImplCopyWith<$Res> {
  __$$SongDetailImplCopyWithImpl(
      _$SongDetailImpl _value, $Res Function(_$SongDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? quality = null,
  }) {
    return _then(_$SongDetailImpl(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as SongQuality,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongDetailImpl implements _SongDetail {
  const _$SongDetailImpl({required this.song, required this.quality});

  factory _$SongDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongDetailImplFromJson(json);

  @override
  final Song song;
  @override
  final SongQuality quality;

  @override
  String toString() {
    return 'SongDetail(song: $song, quality: $quality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongDetailImpl &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, song, quality);

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongDetailImplCopyWith<_$SongDetailImpl> get copyWith =>
      __$$SongDetailImplCopyWithImpl<_$SongDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongDetailImplToJson(
      this,
    );
  }
}

abstract class _SongDetail implements SongDetail {
  const factory _SongDetail(
      {required final Song song,
      required final SongQuality quality}) = _$SongDetailImpl;

  factory _SongDetail.fromJson(Map<String, dynamic> json) =
      _$SongDetailImpl.fromJson;

  @override
  Song get song;
  @override
  SongQuality get quality;

  /// Create a copy of SongDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongDetailImplCopyWith<_$SongDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
