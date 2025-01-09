// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlatformUser _$PlatformUserFromJson(Map<String, dynamic> json) {
  return _PlatformUser.fromJson(json);
}

/// @nodoc
mixin _$PlatformUser {
  String get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this PlatformUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatformUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatformUserCopyWith<PlatformUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformUserCopyWith<$Res> {
  factory $PlatformUserCopyWith(
          PlatformUser value, $Res Function(PlatformUser) then) =
      _$PlatformUserCopyWithImpl<$Res, PlatformUser>;
  @useResult
  $Res call({String id, String nickname});
}

/// @nodoc
class _$PlatformUserCopyWithImpl<$Res, $Val extends PlatformUser>
    implements $PlatformUserCopyWith<$Res> {
  _$PlatformUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlatformUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformUserImplCopyWith<$Res>
    implements $PlatformUserCopyWith<$Res> {
  factory _$$PlatformUserImplCopyWith(
          _$PlatformUserImpl value, $Res Function(_$PlatformUserImpl) then) =
      __$$PlatformUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickname});
}

/// @nodoc
class __$$PlatformUserImplCopyWithImpl<$Res>
    extends _$PlatformUserCopyWithImpl<$Res, _$PlatformUserImpl>
    implements _$$PlatformUserImplCopyWith<$Res> {
  __$$PlatformUserImplCopyWithImpl(
      _$PlatformUserImpl _value, $Res Function(_$PlatformUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlatformUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
  }) {
    return _then(_$PlatformUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformUserImpl implements _PlatformUser {
  const _$PlatformUserImpl({required this.id, required this.nickname});

  factory _$PlatformUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformUserImplFromJson(json);

  @override
  final String id;
  @override
  final String nickname;

  @override
  String toString() {
    return 'PlatformUser(id: $id, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname);

  /// Create a copy of PlatformUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformUserImplCopyWith<_$PlatformUserImpl> get copyWith =>
      __$$PlatformUserImplCopyWithImpl<_$PlatformUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformUserImplToJson(
      this,
    );
  }
}

abstract class _PlatformUser implements PlatformUser {
  const factory _PlatformUser(
      {required final String id,
      required final String nickname}) = _$PlatformUserImpl;

  factory _PlatformUser.fromJson(Map<String, dynamic> json) =
      _$PlatformUserImpl.fromJson;

  @override
  String get id;
  @override
  String get nickname;

  /// Create a copy of PlatformUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatformUserImplCopyWith<_$PlatformUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
