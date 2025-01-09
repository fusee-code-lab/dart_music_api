import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_lyrics.freezed.dart';
part 'song_lyrics.g.dart';

// TODO: 增添歌词解析细节，参考 lyrcis_parser
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
    required BigInt? ms,
    required String content,
  }) = _SongLyricsSentence;

  factory SongLyricsSentence.fromJson(Map<String, dynamic> json) => _$SongLyricsSentenceFromJson(json);
}

