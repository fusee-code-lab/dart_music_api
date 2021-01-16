import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/desktop_api_request.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/linux_api_request.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/web_api_request.dart';
import 'package:dio/dio.dart';

extension NetEasyRequest on NetEasyCrypto {
  Dio get request {
    switch (this) {
      case NetEasyCrypto.desktop: return buildNetEasyEasyDesktopApiRequest();
      case NetEasyCrypto.web: return buildNetEasyEasyWebApiRequest();
      case NetEasyCrypto.linux: return buildNetEasyEasyLinuxApiRequest();
    }
  }
}