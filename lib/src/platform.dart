import 'package:dart_music_api/src/base_api.dart';
import 'package:dart_music_api/src/platforms/combined.dart';
import 'package:dart_music_api/src/platforms/net_easy/net_easy_api.dart';
import 'package:dart_music_api/src/platforms/qq/qq_api.dart';
import 'package:dart_music_api/src/utils.dart';

enum Platform {
  netEasy,
  qq
}

extension PlatformApi on Platform {
  MusicApi get api {
    switch (this) {
      case Platform.netEasy: return NetEasyApi();
      case Platform.qq: return QQApi();
    }
  }
  
  static MusicApi combinedApi(List<Platform> platforms) {
    final unique = platforms.unique;
    return CombinedApi.of(unique);
  }
}