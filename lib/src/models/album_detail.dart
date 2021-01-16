import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:dart_music_api/src/models/song.dart';

class AlbumDetail {
  final Album album;
  final List<Artist> artists;
  final String description;
  final DateTime publishDate;
  final List<Song> songs;

  AlbumDetail({
    required this.album,
    required this.artists,
    required this.description,
    required this.publishDate,
    required this.songs,
  });
}
