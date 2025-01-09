import 'package:dart_music_api/src/models/song.dart';
import 'package:dart_music_api/src/models/song_quality.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_detail.freezed.dart';
part 'song_detail.g.dart';

@freezed
class SongDetail with _$SongDetail {
  const factory SongDetail({
    required Song song,
    required SongQuality quality,
  }) = _SongDetail;

  factory SongDetail.fromJson(Map<String, dynamic> json) =>
      _$SongDetailFromJson(json);
}

