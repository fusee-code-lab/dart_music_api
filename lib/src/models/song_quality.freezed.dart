// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_quality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongQuality _$SongQualityFromJson(Map<String, dynamic> json) {
  return _SongQuality.fromJson(json);
}

/// @nodoc
mixin _$SongQuality {
  SongQualityItem? get high => throw _privateConstructorUsedError;
  SongQualityItem? get medium => throw _privateConstructorUsedError;
  SongQualityItem? get low => throw _privateConstructorUsedError;

  /// Serializes this SongQuality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongQualityCopyWith<SongQuality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongQualityCopyWith<$Res> {
  factory $SongQualityCopyWith(
          SongQuality value, $Res Function(SongQuality) then) =
      _$SongQualityCopyWithImpl<$Res, SongQuality>;
  @useResult
  $Res call(
      {SongQualityItem? high, SongQualityItem? medium, SongQualityItem? low});

  $SongQualityItemCopyWith<$Res>? get high;
  $SongQualityItemCopyWith<$Res>? get medium;
  $SongQualityItemCopyWith<$Res>? get low;
}

/// @nodoc
class _$SongQualityCopyWithImpl<$Res, $Val extends SongQuality>
    implements $SongQualityCopyWith<$Res> {
  _$SongQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = freezed,
    Object? medium = freezed,
    Object? low = freezed,
  }) {
    return _then(_value.copyWith(
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as SongQualityItem?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as SongQualityItem?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as SongQualityItem?,
    ) as $Val);
  }

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongQualityItemCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $SongQualityItemCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongQualityItemCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $SongQualityItemCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongQualityItemCopyWith<$Res>? get low {
    if (_value.low == null) {
      return null;
    }

    return $SongQualityItemCopyWith<$Res>(_value.low!, (value) {
      return _then(_value.copyWith(low: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongQualityImplCopyWith<$Res>
    implements $SongQualityCopyWith<$Res> {
  factory _$$SongQualityImplCopyWith(
          _$SongQualityImpl value, $Res Function(_$SongQualityImpl) then) =
      __$$SongQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SongQualityItem? high, SongQualityItem? medium, SongQualityItem? low});

  @override
  $SongQualityItemCopyWith<$Res>? get high;
  @override
  $SongQualityItemCopyWith<$Res>? get medium;
  @override
  $SongQualityItemCopyWith<$Res>? get low;
}

/// @nodoc
class __$$SongQualityImplCopyWithImpl<$Res>
    extends _$SongQualityCopyWithImpl<$Res, _$SongQualityImpl>
    implements _$$SongQualityImplCopyWith<$Res> {
  __$$SongQualityImplCopyWithImpl(
      _$SongQualityImpl _value, $Res Function(_$SongQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = freezed,
    Object? medium = freezed,
    Object? low = freezed,
  }) {
    return _then(_$SongQualityImpl(
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as SongQualityItem?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as SongQualityItem?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as SongQualityItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongQualityImpl implements _SongQuality {
  const _$SongQualityImpl({this.high, this.medium, this.low});

  factory _$SongQualityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongQualityImplFromJson(json);

  @override
  final SongQualityItem? high;
  @override
  final SongQualityItem? medium;
  @override
  final SongQualityItem? low;

  @override
  String toString() {
    return 'SongQuality(high: $high, medium: $medium, low: $low)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongQualityImpl &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.low, low) || other.low == low));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, high, medium, low);

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongQualityImplCopyWith<_$SongQualityImpl> get copyWith =>
      __$$SongQualityImplCopyWithImpl<_$SongQualityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongQualityImplToJson(
      this,
    );
  }
}

abstract class _SongQuality implements SongQuality {
  const factory _SongQuality(
      {final SongQualityItem? high,
      final SongQualityItem? medium,
      final SongQualityItem? low}) = _$SongQualityImpl;

  factory _SongQuality.fromJson(Map<String, dynamic> json) =
      _$SongQualityImpl.fromJson;

  @override
  SongQualityItem? get high;
  @override
  SongQualityItem? get medium;
  @override
  SongQualityItem? get low;

  /// Create a copy of SongQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongQualityImplCopyWith<_$SongQualityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongQualityItem _$SongQualityItemFromJson(Map<String, dynamic> json) {
  return _SongQualityItem.fromJson(json);
}

/// @nodoc
mixin _$SongQualityItem {
  BigInt get bitRate => throw _privateConstructorUsedError;
  BigInt get bitSize => throw _privateConstructorUsedError;

  /// Serializes this SongQualityItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongQualityItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongQualityItemCopyWith<SongQualityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongQualityItemCopyWith<$Res> {
  factory $SongQualityItemCopyWith(
          SongQualityItem value, $Res Function(SongQualityItem) then) =
      _$SongQualityItemCopyWithImpl<$Res, SongQualityItem>;
  @useResult
  $Res call({BigInt bitRate, BigInt bitSize});
}

/// @nodoc
class _$SongQualityItemCopyWithImpl<$Res, $Val extends SongQualityItem>
    implements $SongQualityItemCopyWith<$Res> {
  _$SongQualityItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongQualityItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitRate = null,
    Object? bitSize = null,
  }) {
    return _then(_value.copyWith(
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bitSize: null == bitSize
          ? _value.bitSize
          : bitSize // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongQualityItemImplCopyWith<$Res>
    implements $SongQualityItemCopyWith<$Res> {
  factory _$$SongQualityItemImplCopyWith(_$SongQualityItemImpl value,
          $Res Function(_$SongQualityItemImpl) then) =
      __$$SongQualityItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt bitRate, BigInt bitSize});
}

/// @nodoc
class __$$SongQualityItemImplCopyWithImpl<$Res>
    extends _$SongQualityItemCopyWithImpl<$Res, _$SongQualityItemImpl>
    implements _$$SongQualityItemImplCopyWith<$Res> {
  __$$SongQualityItemImplCopyWithImpl(
      _$SongQualityItemImpl _value, $Res Function(_$SongQualityItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongQualityItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitRate = null,
    Object? bitSize = null,
  }) {
    return _then(_$SongQualityItemImpl(
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bitSize: null == bitSize
          ? _value.bitSize
          : bitSize // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongQualityItemImpl implements _SongQualityItem {
  const _$SongQualityItemImpl({required this.bitRate, required this.bitSize});

  factory _$SongQualityItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongQualityItemImplFromJson(json);

  @override
  final BigInt bitRate;
  @override
  final BigInt bitSize;

  @override
  String toString() {
    return 'SongQualityItem(bitRate: $bitRate, bitSize: $bitSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongQualityItemImpl &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate) &&
            (identical(other.bitSize, bitSize) || other.bitSize == bitSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitRate, bitSize);

  /// Create a copy of SongQualityItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongQualityItemImplCopyWith<_$SongQualityItemImpl> get copyWith =>
      __$$SongQualityItemImplCopyWithImpl<_$SongQualityItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongQualityItemImplToJson(
      this,
    );
  }
}

abstract class _SongQualityItem implements SongQualityItem {
  const factory _SongQualityItem(
      {required final BigInt bitRate,
      required final BigInt bitSize}) = _$SongQualityItemImpl;

  factory _SongQualityItem.fromJson(Map<String, dynamic> json) =
      _$SongQualityItemImpl.fromJson;

  @override
  BigInt get bitRate;
  @override
  BigInt get bitSize;

  /// Create a copy of SongQualityItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongQualityItemImplCopyWith<_$SongQualityItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
