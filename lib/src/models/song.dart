import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';

// TODO 增加 alias ， EG: the alia of 海阔天空 is 网络电影《九五2班》插曲
class Song {
  final String id;
  final String name;
  final List<Artist> artists;
  final Duration duration;
  final Album album;
  final String? mvId;

  Song({
    required this.id,
    required this.name,
    required this.artists,
    required this.duration,
    required this.album,
    this.mvId,
  });
}
