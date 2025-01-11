// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anonymous_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NeteaseAnonymousInfo _$NeteaseAnonymousInfoFromJson(Map<String, dynamic> json) {
  return _NeteaseAnonymousInfo.fromJson(json);
}

/// @nodoc
mixin _$NeteaseAnonymousInfo {
  String get ip => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get anonymousToken => throw _privateConstructorUsedError;

  /// Serializes this NeteaseAnonymousInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NeteaseAnonymousInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NeteaseAnonymousInfoCopyWith<NeteaseAnonymousInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NeteaseAnonymousInfoCopyWith<$Res> {
  factory $NeteaseAnonymousInfoCopyWith(NeteaseAnonymousInfo value,
          $Res Function(NeteaseAnonymousInfo) then) =
      _$NeteaseAnonymousInfoCopyWithImpl<$Res, NeteaseAnonymousInfo>;
  @useResult
  $Res call({String ip, String deviceId, String anonymousToken});
}

/// @nodoc
class _$NeteaseAnonymousInfoCopyWithImpl<$Res,
        $Val extends NeteaseAnonymousInfo>
    implements $NeteaseAnonymousInfoCopyWith<$Res> {
  _$NeteaseAnonymousInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NeteaseAnonymousInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? deviceId = null,
    Object? anonymousToken = null,
  }) {
    return _then(_value.copyWith(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      anonymousToken: null == anonymousToken
          ? _value.anonymousToken
          : anonymousToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NeteaseAnonymousInfoImplCopyWith<$Res>
    implements $NeteaseAnonymousInfoCopyWith<$Res> {
  factory _$$NeteaseAnonymousInfoImplCopyWith(_$NeteaseAnonymousInfoImpl value,
          $Res Function(_$NeteaseAnonymousInfoImpl) then) =
      __$$NeteaseAnonymousInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, String deviceId, String anonymousToken});
}

/// @nodoc
class __$$NeteaseAnonymousInfoImplCopyWithImpl<$Res>
    extends _$NeteaseAnonymousInfoCopyWithImpl<$Res, _$NeteaseAnonymousInfoImpl>
    implements _$$NeteaseAnonymousInfoImplCopyWith<$Res> {
  __$$NeteaseAnonymousInfoImplCopyWithImpl(_$NeteaseAnonymousInfoImpl _value,
      $Res Function(_$NeteaseAnonymousInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NeteaseAnonymousInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? deviceId = null,
    Object? anonymousToken = null,
  }) {
    return _then(_$NeteaseAnonymousInfoImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      anonymousToken: null == anonymousToken
          ? _value.anonymousToken
          : anonymousToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NeteaseAnonymousInfoImpl implements _NeteaseAnonymousInfo {
  const _$NeteaseAnonymousInfoImpl(
      {required this.ip, required this.deviceId, required this.anonymousToken});

  factory _$NeteaseAnonymousInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NeteaseAnonymousInfoImplFromJson(json);

  @override
  final String ip;
  @override
  final String deviceId;
  @override
  final String anonymousToken;

  @override
  String toString() {
    return 'NeteaseAnonymousInfo(ip: $ip, deviceId: $deviceId, anonymousToken: $anonymousToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeteaseAnonymousInfoImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.anonymousToken, anonymousToken) ||
                other.anonymousToken == anonymousToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ip, deviceId, anonymousToken);

  /// Create a copy of NeteaseAnonymousInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NeteaseAnonymousInfoImplCopyWith<_$NeteaseAnonymousInfoImpl>
      get copyWith =>
          __$$NeteaseAnonymousInfoImplCopyWithImpl<_$NeteaseAnonymousInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NeteaseAnonymousInfoImplToJson(
      this,
    );
  }
}

abstract class _NeteaseAnonymousInfo implements NeteaseAnonymousInfo {
  const factory _NeteaseAnonymousInfo(
      {required final String ip,
      required final String deviceId,
      required final String anonymousToken}) = _$NeteaseAnonymousInfoImpl;

  factory _NeteaseAnonymousInfo.fromJson(Map<String, dynamic> json) =
      _$NeteaseAnonymousInfoImpl.fromJson;

  @override
  String get ip;
  @override
  String get deviceId;
  @override
  String get anonymousToken;

  /// Create a copy of NeteaseAnonymousInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NeteaseAnonymousInfoImplCopyWith<_$NeteaseAnonymousInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
