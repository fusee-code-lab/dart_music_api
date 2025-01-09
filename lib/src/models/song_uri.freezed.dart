// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongUri _$SongUriFromJson(Map<String, dynamic> json) {
  return _SongUri.fromJson(json);
}

/// @nodoc
mixin _$SongUri {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  BigInt get bitRate => throw _privateConstructorUsedError;
  BigInt get bitSize => throw _privateConstructorUsedError;
  String get md5CheckSum => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;

  /// Serializes this SongUri to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongUri
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongUriCopyWith<SongUri> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongUriCopyWith<$Res> {
  factory $SongUriCopyWith(SongUri value, $Res Function(SongUri) then) =
      _$SongUriCopyWithImpl<$Res, SongUri>;
  @useResult
  $Res call(
      {String id,
      String url,
      BigInt bitRate,
      BigInt bitSize,
      String md5CheckSum,
      String fileType});
}

/// @nodoc
class _$SongUriCopyWithImpl<$Res, $Val extends SongUri>
    implements $SongUriCopyWith<$Res> {
  _$SongUriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongUri
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? bitRate = null,
    Object? bitSize = null,
    Object? md5CheckSum = null,
    Object? fileType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bitSize: null == bitSize
          ? _value.bitSize
          : bitSize // ignore: cast_nullable_to_non_nullable
              as BigInt,
      md5CheckSum: null == md5CheckSum
          ? _value.md5CheckSum
          : md5CheckSum // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongUriImplCopyWith<$Res> implements $SongUriCopyWith<$Res> {
  factory _$$SongUriImplCopyWith(
          _$SongUriImpl value, $Res Function(_$SongUriImpl) then) =
      __$$SongUriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      BigInt bitRate,
      BigInt bitSize,
      String md5CheckSum,
      String fileType});
}

/// @nodoc
class __$$SongUriImplCopyWithImpl<$Res>
    extends _$SongUriCopyWithImpl<$Res, _$SongUriImpl>
    implements _$$SongUriImplCopyWith<$Res> {
  __$$SongUriImplCopyWithImpl(
      _$SongUriImpl _value, $Res Function(_$SongUriImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongUri
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? bitRate = null,
    Object? bitSize = null,
    Object? md5CheckSum = null,
    Object? fileType = null,
  }) {
    return _then(_$SongUriImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bitSize: null == bitSize
          ? _value.bitSize
          : bitSize // ignore: cast_nullable_to_non_nullable
              as BigInt,
      md5CheckSum: null == md5CheckSum
          ? _value.md5CheckSum
          : md5CheckSum // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongUriImpl implements _SongUri {
  const _$SongUriImpl(
      {required this.id,
      required this.url,
      required this.bitRate,
      required this.bitSize,
      required this.md5CheckSum,
      required this.fileType});

  factory _$SongUriImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongUriImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final BigInt bitRate;
  @override
  final BigInt bitSize;
  @override
  final String md5CheckSum;
  @override
  final String fileType;

  @override
  String toString() {
    return 'SongUri(id: $id, url: $url, bitRate: $bitRate, bitSize: $bitSize, md5CheckSum: $md5CheckSum, fileType: $fileType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongUriImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate) &&
            (identical(other.bitSize, bitSize) || other.bitSize == bitSize) &&
            (identical(other.md5CheckSum, md5CheckSum) ||
                other.md5CheckSum == md5CheckSum) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, url, bitRate, bitSize, md5CheckSum, fileType);

  /// Create a copy of SongUri
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongUriImplCopyWith<_$SongUriImpl> get copyWith =>
      __$$SongUriImplCopyWithImpl<_$SongUriImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongUriImplToJson(
      this,
    );
  }
}

abstract class _SongUri implements SongUri {
  const factory _SongUri(
      {required final String id,
      required final String url,
      required final BigInt bitRate,
      required final BigInt bitSize,
      required final String md5CheckSum,
      required final String fileType}) = _$SongUriImpl;

  factory _SongUri.fromJson(Map<String, dynamic> json) = _$SongUriImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  BigInt get bitRate;
  @override
  BigInt get bitSize;
  @override
  String get md5CheckSum;
  @override
  String get fileType;

  /// Create a copy of SongUri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongUriImplCopyWith<_$SongUriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
