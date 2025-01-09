// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayList _$PlayListFromJson(Map<String, dynamic> json) {
  return _PlayList.fromJson(json);
}

/// @nodoc
mixin _$PlayList {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  PlatformUser get creator => throw _privateConstructorUsedError;
  int get songsCount => throw _privateConstructorUsedError;

  /// Serializes this PlayList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayListCopyWith<PlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListCopyWith<$Res> {
  factory $PlayListCopyWith(PlayList value, $Res Function(PlayList) then) =
      _$PlayListCopyWithImpl<$Res, PlayList>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? coverImageUrl,
      String? description,
      PlatformUser creator,
      int songsCount});

  $PlatformUserCopyWith<$Res> get creator;
}

/// @nodoc
class _$PlayListCopyWithImpl<$Res, $Val extends PlayList>
    implements $PlayListCopyWith<$Res> {
  _$PlayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coverImageUrl = freezed,
    Object? description = freezed,
    Object? creator = null,
    Object? songsCount = null,
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
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as PlatformUser,
      songsCount: null == songsCount
          ? _value.songsCount
          : songsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlatformUserCopyWith<$Res> get creator {
    return $PlatformUserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayListImplCopyWith<$Res>
    implements $PlayListCopyWith<$Res> {
  factory _$$PlayListImplCopyWith(
          _$PlayListImpl value, $Res Function(_$PlayListImpl) then) =
      __$$PlayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? coverImageUrl,
      String? description,
      PlatformUser creator,
      int songsCount});

  @override
  $PlatformUserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$PlayListImplCopyWithImpl<$Res>
    extends _$PlayListCopyWithImpl<$Res, _$PlayListImpl>
    implements _$$PlayListImplCopyWith<$Res> {
  __$$PlayListImplCopyWithImpl(
      _$PlayListImpl _value, $Res Function(_$PlayListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coverImageUrl = freezed,
    Object? description = freezed,
    Object? creator = null,
    Object? songsCount = null,
  }) {
    return _then(_$PlayListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as PlatformUser,
      songsCount: null == songsCount
          ? _value.songsCount
          : songsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayListImpl implements _PlayList {
  const _$PlayListImpl(
      {required this.id,
      required this.name,
      this.coverImageUrl,
      this.description,
      required this.creator,
      required this.songsCount});

  factory _$PlayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? coverImageUrl;
  @override
  final String? description;
  @override
  final PlatformUser creator;
  @override
  final int songsCount;

  @override
  String toString() {
    return 'PlayList(id: $id, name: $name, coverImageUrl: $coverImageUrl, description: $description, creator: $creator, songsCount: $songsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.songsCount, songsCount) ||
                other.songsCount == songsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, coverImageUrl, description, creator, songsCount);

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      __$$PlayListImplCopyWithImpl<_$PlayListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListImplToJson(
      this,
    );
  }
}

abstract class _PlayList implements PlayList {
  const factory _PlayList(
      {required final String id,
      required final String name,
      final String? coverImageUrl,
      final String? description,
      required final PlatformUser creator,
      required final int songsCount}) = _$PlayListImpl;

  factory _PlayList.fromJson(Map<String, dynamic> json) =
      _$PlayListImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get coverImageUrl;
  @override
  String? get description;
  @override
  PlatformUser get creator;
  @override
  int get songsCount;

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
