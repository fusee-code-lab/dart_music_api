import 'package:dart_music_api/src/models/Artist.dart';
import 'package:dart_music_api/src/models/album.dart';

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
