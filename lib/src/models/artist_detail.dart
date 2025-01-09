import 'package:dart_music_api/music_api.dart';

class ArtistDetail {
  final Artist artist;
  final int albumCount;
  final int musicCount;
  final int mvCount;
  final String briefDescription;

  ArtistDetail({
    required this.artist,
    required this.albumCount,
    required this.musicCount,
    required this.mvCount,
    required this.briefDescription
  });
}
