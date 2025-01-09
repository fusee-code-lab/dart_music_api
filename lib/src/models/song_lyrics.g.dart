// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_lyrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongLyricsImpl _$$SongLyricsImplFromJson(Map<String, dynamic> json) =>
    _$SongLyricsImpl(
      original: json['original'] == null
          ? null
          : SongLyricsItem.fromJson(json['original'] as Map<String, dynamic>),
      translated: json['translated'] == null
          ? null
          : SongLyricsItem.fromJson(json['translated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongLyricsImplToJson(_$SongLyricsImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'translated': instance.translated,
    };

_$SongLyricsItemImpl _$$SongLyricsItemImplFromJson(Map<String, dynamic> json) =>
    _$SongLyricsItemImpl(
      strRaw: json['strRaw'] as String,
      content: (json['content'] as List<dynamic>)
          .map((e) => SongLyricsSentence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SongLyricsItemImplToJson(
        _$SongLyricsItemImpl instance) =>
    <String, dynamic>{
      'strRaw': instance.strRaw,
      'content': instance.content,
    };

_$SongLyricsSentenceImpl _$$SongLyricsSentenceImplFromJson(
        Map<String, dynamic> json) =>
    _$SongLyricsSentenceImpl(
      ms: json['ms'] == null ? null : BigInt.parse(json['ms'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$SongLyricsSentenceImplToJson(
        _$SongLyricsSentenceImpl instance) =>
    <String, dynamic>{
      'ms': instance.ms?.toString(),
      'content': instance.content,
    };
