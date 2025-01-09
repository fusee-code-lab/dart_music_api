// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_lyrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongLyrics _$SongLyricsFromJson(Map<String, dynamic> json) {
  return _SongLyrics.fromJson(json);
}

/// @nodoc
mixin _$SongLyrics {
  SongLyricsItem? get original => throw _privateConstructorUsedError;
  SongLyricsItem? get translated => throw _privateConstructorUsedError;

  /// Serializes this SongLyrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongLyricsCopyWith<SongLyrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongLyricsCopyWith<$Res> {
  factory $SongLyricsCopyWith(
          SongLyrics value, $Res Function(SongLyrics) then) =
      _$SongLyricsCopyWithImpl<$Res, SongLyrics>;
  @useResult
  $Res call({SongLyricsItem? original, SongLyricsItem? translated});

  $SongLyricsItemCopyWith<$Res>? get original;
  $SongLyricsItemCopyWith<$Res>? get translated;
}

/// @nodoc
class _$SongLyricsCopyWithImpl<$Res, $Val extends SongLyrics>
    implements $SongLyricsCopyWith<$Res> {
  _$SongLyricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? translated = freezed,
  }) {
    return _then(_value.copyWith(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as SongLyricsItem?,
      translated: freezed == translated
          ? _value.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as SongLyricsItem?,
    ) as $Val);
  }

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongLyricsItemCopyWith<$Res>? get original {
    if (_value.original == null) {
      return null;
    }

    return $SongLyricsItemCopyWith<$Res>(_value.original!, (value) {
      return _then(_value.copyWith(original: value) as $Val);
    });
  }

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongLyricsItemCopyWith<$Res>? get translated {
    if (_value.translated == null) {
      return null;
    }

    return $SongLyricsItemCopyWith<$Res>(_value.translated!, (value) {
      return _then(_value.copyWith(translated: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongLyricsImplCopyWith<$Res>
    implements $SongLyricsCopyWith<$Res> {
  factory _$$SongLyricsImplCopyWith(
          _$SongLyricsImpl value, $Res Function(_$SongLyricsImpl) then) =
      __$$SongLyricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SongLyricsItem? original, SongLyricsItem? translated});

  @override
  $SongLyricsItemCopyWith<$Res>? get original;
  @override
  $SongLyricsItemCopyWith<$Res>? get translated;
}

/// @nodoc
class __$$SongLyricsImplCopyWithImpl<$Res>
    extends _$SongLyricsCopyWithImpl<$Res, _$SongLyricsImpl>
    implements _$$SongLyricsImplCopyWith<$Res> {
  __$$SongLyricsImplCopyWithImpl(
      _$SongLyricsImpl _value, $Res Function(_$SongLyricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? translated = freezed,
  }) {
    return _then(_$SongLyricsImpl(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as SongLyricsItem?,
      translated: freezed == translated
          ? _value.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as SongLyricsItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongLyricsImpl implements _SongLyrics {
  const _$SongLyricsImpl({this.original, this.translated});

  factory _$SongLyricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongLyricsImplFromJson(json);

  @override
  final SongLyricsItem? original;
  @override
  final SongLyricsItem? translated;

  @override
  String toString() {
    return 'SongLyrics(original: $original, translated: $translated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongLyricsImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.translated, translated) ||
                other.translated == translated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, translated);

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongLyricsImplCopyWith<_$SongLyricsImpl> get copyWith =>
      __$$SongLyricsImplCopyWithImpl<_$SongLyricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongLyricsImplToJson(
      this,
    );
  }
}

abstract class _SongLyrics implements SongLyrics {
  const factory _SongLyrics(
      {final SongLyricsItem? original,
      final SongLyricsItem? translated}) = _$SongLyricsImpl;

  factory _SongLyrics.fromJson(Map<String, dynamic> json) =
      _$SongLyricsImpl.fromJson;

  @override
  SongLyricsItem? get original;
  @override
  SongLyricsItem? get translated;

  /// Create a copy of SongLyrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongLyricsImplCopyWith<_$SongLyricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongLyricsItem _$SongLyricsItemFromJson(Map<String, dynamic> json) {
  return _SongLyricsItem.fromJson(json);
}

/// @nodoc
mixin _$SongLyricsItem {
  String get strRaw => throw _privateConstructorUsedError;
  List<SongLyricsSentence> get content => throw _privateConstructorUsedError;

  /// Serializes this SongLyricsItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongLyricsItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongLyricsItemCopyWith<SongLyricsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongLyricsItemCopyWith<$Res> {
  factory $SongLyricsItemCopyWith(
          SongLyricsItem value, $Res Function(SongLyricsItem) then) =
      _$SongLyricsItemCopyWithImpl<$Res, SongLyricsItem>;
  @useResult
  $Res call({String strRaw, List<SongLyricsSentence> content});
}

/// @nodoc
class _$SongLyricsItemCopyWithImpl<$Res, $Val extends SongLyricsItem>
    implements $SongLyricsItemCopyWith<$Res> {
  _$SongLyricsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongLyricsItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strRaw = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      strRaw: null == strRaw
          ? _value.strRaw
          : strRaw // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SongLyricsSentence>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongLyricsItemImplCopyWith<$Res>
    implements $SongLyricsItemCopyWith<$Res> {
  factory _$$SongLyricsItemImplCopyWith(_$SongLyricsItemImpl value,
          $Res Function(_$SongLyricsItemImpl) then) =
      __$$SongLyricsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strRaw, List<SongLyricsSentence> content});
}

/// @nodoc
class __$$SongLyricsItemImplCopyWithImpl<$Res>
    extends _$SongLyricsItemCopyWithImpl<$Res, _$SongLyricsItemImpl>
    implements _$$SongLyricsItemImplCopyWith<$Res> {
  __$$SongLyricsItemImplCopyWithImpl(
      _$SongLyricsItemImpl _value, $Res Function(_$SongLyricsItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongLyricsItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strRaw = null,
    Object? content = null,
  }) {
    return _then(_$SongLyricsItemImpl(
      strRaw: null == strRaw
          ? _value.strRaw
          : strRaw // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SongLyricsSentence>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongLyricsItemImpl implements _SongLyricsItem {
  const _$SongLyricsItemImpl(
      {required this.strRaw, required final List<SongLyricsSentence> content})
      : _content = content;

  factory _$SongLyricsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongLyricsItemImplFromJson(json);

  @override
  final String strRaw;
  final List<SongLyricsSentence> _content;
  @override
  List<SongLyricsSentence> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'SongLyricsItem(strRaw: $strRaw, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongLyricsItemImpl &&
            (identical(other.strRaw, strRaw) || other.strRaw == strRaw) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, strRaw, const DeepCollectionEquality().hash(_content));

  /// Create a copy of SongLyricsItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongLyricsItemImplCopyWith<_$SongLyricsItemImpl> get copyWith =>
      __$$SongLyricsItemImplCopyWithImpl<_$SongLyricsItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongLyricsItemImplToJson(
      this,
    );
  }
}

abstract class _SongLyricsItem implements SongLyricsItem {
  const factory _SongLyricsItem(
      {required final String strRaw,
      required final List<SongLyricsSentence> content}) = _$SongLyricsItemImpl;

  factory _SongLyricsItem.fromJson(Map<String, dynamic> json) =
      _$SongLyricsItemImpl.fromJson;

  @override
  String get strRaw;
  @override
  List<SongLyricsSentence> get content;

  /// Create a copy of SongLyricsItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongLyricsItemImplCopyWith<_$SongLyricsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongLyricsSentence _$SongLyricsSentenceFromJson(Map<String, dynamic> json) {
  return _SongLyricsSentence.fromJson(json);
}

/// @nodoc
mixin _$SongLyricsSentence {
  BigInt? get ms => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this SongLyricsSentence to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongLyricsSentence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongLyricsSentenceCopyWith<SongLyricsSentence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongLyricsSentenceCopyWith<$Res> {
  factory $SongLyricsSentenceCopyWith(
          SongLyricsSentence value, $Res Function(SongLyricsSentence) then) =
      _$SongLyricsSentenceCopyWithImpl<$Res, SongLyricsSentence>;
  @useResult
  $Res call({BigInt? ms, String content});
}

/// @nodoc
class _$SongLyricsSentenceCopyWithImpl<$Res, $Val extends SongLyricsSentence>
    implements $SongLyricsSentenceCopyWith<$Res> {
  _$SongLyricsSentenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongLyricsSentence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ms = freezed,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      ms: freezed == ms
          ? _value.ms
          : ms // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongLyricsSentenceImplCopyWith<$Res>
    implements $SongLyricsSentenceCopyWith<$Res> {
  factory _$$SongLyricsSentenceImplCopyWith(_$SongLyricsSentenceImpl value,
          $Res Function(_$SongLyricsSentenceImpl) then) =
      __$$SongLyricsSentenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt? ms, String content});
}

/// @nodoc
class __$$SongLyricsSentenceImplCopyWithImpl<$Res>
    extends _$SongLyricsSentenceCopyWithImpl<$Res, _$SongLyricsSentenceImpl>
    implements _$$SongLyricsSentenceImplCopyWith<$Res> {
  __$$SongLyricsSentenceImplCopyWithImpl(_$SongLyricsSentenceImpl _value,
      $Res Function(_$SongLyricsSentenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongLyricsSentence
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ms = freezed,
    Object? content = null,
  }) {
    return _then(_$SongLyricsSentenceImpl(
      ms: freezed == ms
          ? _value.ms
          : ms // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongLyricsSentenceImpl implements _SongLyricsSentence {
  const _$SongLyricsSentenceImpl({required this.ms, required this.content});

  factory _$SongLyricsSentenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongLyricsSentenceImplFromJson(json);

  @override
  final BigInt? ms;
  @override
  final String content;

  @override
  String toString() {
    return 'SongLyricsSentence(ms: $ms, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongLyricsSentenceImpl &&
            (identical(other.ms, ms) || other.ms == ms) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ms, content);

  /// Create a copy of SongLyricsSentence
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongLyricsSentenceImplCopyWith<_$SongLyricsSentenceImpl> get copyWith =>
      __$$SongLyricsSentenceImplCopyWithImpl<_$SongLyricsSentenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongLyricsSentenceImplToJson(
      this,
    );
  }
}

abstract class _SongLyricsSentence implements SongLyricsSentence {
  const factory _SongLyricsSentence(
      {required final BigInt? ms,
      required final String content}) = _$SongLyricsSentenceImpl;

  factory _SongLyricsSentence.fromJson(Map<String, dynamic> json) =
      _$SongLyricsSentenceImpl.fromJson;

  @override
  BigInt? get ms;
  @override
  String get content;

  /// Create a copy of SongLyricsSentence
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongLyricsSentenceImplCopyWith<_$SongLyricsSentenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
