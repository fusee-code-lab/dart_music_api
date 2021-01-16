import 'package:dart_music_api/src/base_api.dart';
import 'package:dart_music_api/src/platforms/combined.dart';
import 'package:dart_music_api/src/platforms/net_easy/net_easy_api.dart';
import 'package:dart_music_api/src/platforms/qq/qq_api.dart';

enum MusicPlatform {
  netEasy,
  qq
}

extension MusicPlatformApi on MusicPlatform {
  MusicApi get api {
    switch (this) {
      case MusicPlatform.netEasy: return NetEasyApi();
      case MusicPlatform.qq: return QQApi();
    }
  }

  static MusicApi get combinedApi {
    return CombinedApi.of(MusicPlatform.values);
  }
}