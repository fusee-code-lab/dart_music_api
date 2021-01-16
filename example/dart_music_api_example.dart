import 'package:dart_music_api/music_api.dart';

void main() {
  MusicPlatformApi.combinedApi
      .searchSongs('安静')
      .limit(50)
      .nextPage();
}