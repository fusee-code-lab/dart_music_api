import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

// TODO 增加 alias ， EG: the alia of 海阔天空 is 网络电影《九五2班》插曲
@freezed
class Song with _$Song {
  const factory Song({
    required String id,
    required String name,
    required List<Artist> artists,
    required Duration duration,
    required Album album,
    String? mvId,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}
