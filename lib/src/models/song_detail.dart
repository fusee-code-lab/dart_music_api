import 'package:dart_music_api/src/models/song.dart';
import 'package:dart_music_api/src/models/song_quality.dart';

class SongDetail {
  final Song song;
  final SongQuality quality;

  SongDetail({required this.song, required this.quality});
}

