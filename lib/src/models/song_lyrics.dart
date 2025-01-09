import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_lyrics.freezed.dart';
part 'song_lyrics.g.dart';

@freezed
class SongLyrics with _$SongLyrics {
  const factory SongLyrics({
    SongLyricsItem? original,
    SongLyricsItem? translated,
  }) = _SongLyrics;

  factory SongLyrics.fromJson(Map<String, dynamic> json) => _$SongLyricsFromJson(json);
}

@freezed
class SongLyricsItem with _$SongLyricsItem {
  const factory SongLyricsItem({
    required String strRaw,
    required List<SongLyricsSentence> content,
  }) = _SongLyricsItem;

  factory SongLyricsItem.fromJson(Map<String, dynamic> json) => _$SongLyricsItemFromJson(json);
}

@freezed
class SongLyricsSentence with _$SongLyricsSentence {
  const factory SongLyricsSentence({
    required BigInt ms,
    // TODO 用表示时间的模型 例如 TimeOfDay https://api.flutter.dev/flutter/material/TimeOfDay-class.html
    required String startTime,
    required String content,
  }) = _SongLyricsSentence;

  factory SongLyricsSentence.fromJson(Map<String, dynamic> json) => _$SongLyricsSentenceFromJson(json);
}

