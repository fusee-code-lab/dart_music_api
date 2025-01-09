// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_list_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayListDetail _$PlayListDetailFromJson(Map<String, dynamic> json) {
  return _PlayListDetail.fromJson(json);
}

/// @nodoc
mixin _$PlayListDetail {
  PlayList get playList => throw _privateConstructorUsedError;
  DateTime get createTime => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<String> get trackIds => throw _privateConstructorUsedError;

  /// Serializes this PlayListDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayListDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayListDetailCopyWith<PlayListDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListDetailCopyWith<$Res> {
  factory $PlayListDetailCopyWith(
          PlayListDetail value, $Res Function(PlayListDetail) then) =
      _$PlayListDetailCopyWithImpl<$Res, PlayListDetail>;
  @useResult
  $Res call(
      {PlayList playList,
      DateTime createTime,
      DateTime updateTime,
      List<Tag> tags,
      List<String> trackIds});

  $PlayListCopyWith<$Res> get playList;
}

/// @nodoc
class _$PlayListDetailCopyWithImpl<$Res, $Val extends PlayListDetail>
    implements $PlayListDetailCopyWith<$Res> {
  _$PlayListDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayListDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playList = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? tags = null,
    Object? trackIds = null,
  }) {
    return _then(_value.copyWith(
      playList: null == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as PlayList,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      trackIds: null == trackIds
          ? _value.trackIds
          : trackIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of PlayListDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayListCopyWith<$Res> get playList {
    return $PlayListCopyWith<$Res>(_value.playList, (value) {
      return _then(_value.copyWith(playList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayListDetailImplCopyWith<$Res>
    implements $PlayListDetailCopyWith<$Res> {
  factory _$$PlayListDetailImplCopyWith(_$PlayListDetailImpl value,
          $Res Function(_$PlayListDetailImpl) then) =
      __$$PlayListDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlayList playList,
      DateTime createTime,
      DateTime updateTime,
      List<Tag> tags,
      List<String> trackIds});

  @override
  $PlayListCopyWith<$Res> get playList;
}

/// @nodoc
class __$$PlayListDetailImplCopyWithImpl<$Res>
    extends _$PlayListDetailCopyWithImpl<$Res, _$PlayListDetailImpl>
    implements _$$PlayListDetailImplCopyWith<$Res> {
  __$$PlayListDetailImplCopyWithImpl(
      _$PlayListDetailImpl _value, $Res Function(_$PlayListDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayListDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playList = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? tags = null,
    Object? trackIds = null,
  }) {
    return _then(_$PlayListDetailImpl(
      playList: null == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as PlayList,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      trackIds: null == trackIds
          ? _value._trackIds
          : trackIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayListDetailImpl implements _PlayListDetail {
  const _$PlayListDetailImpl(
      {required this.playList,
      required this.createTime,
      required this.updateTime,
      required final List<Tag> tags,
      required final List<String> trackIds})
      : _tags = tags,
        _trackIds = trackIds;

  factory _$PlayListDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListDetailImplFromJson(json);

  @override
  final PlayList playList;
  @override
  final DateTime createTime;
  @override
  final DateTime updateTime;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _trackIds;
  @override
  List<String> get trackIds {
    if (_trackIds is EqualUnmodifiableListView) return _trackIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackIds);
  }

  @override
  String toString() {
    return 'PlayListDetail(playList: $playList, createTime: $createTime, updateTime: $updateTime, tags: $tags, trackIds: $trackIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListDetailImpl &&
            (identical(other.playList, playList) ||
                other.playList == playList) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._trackIds, _trackIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playList,
      createTime,
      updateTime,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_trackIds));

  /// Create a copy of PlayListDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListDetailImplCopyWith<_$PlayListDetailImpl> get copyWith =>
      __$$PlayListDetailImplCopyWithImpl<_$PlayListDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListDetailImplToJson(
      this,
    );
  }
}

abstract class _PlayListDetail implements PlayListDetail {
  const factory _PlayListDetail(
      {required final PlayList playList,
      required final DateTime createTime,
      required final DateTime updateTime,
      required final List<Tag> tags,
      required final List<String> trackIds}) = _$PlayListDetailImpl;

  factory _PlayListDetail.fromJson(Map<String, dynamic> json) =
      _$PlayListDetailImpl.fromJson;

  @override
  PlayList get playList;
  @override
  DateTime get createTime;
  @override
  DateTime get updateTime;
  @override
  List<Tag> get tags;
  @override
  List<String> get trackIds;

  /// Create a copy of PlayListDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayListDetailImplCopyWith<_$PlayListDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
