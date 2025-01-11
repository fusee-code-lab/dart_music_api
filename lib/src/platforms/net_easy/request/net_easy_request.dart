import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/desktop_api_request.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/linux_api_request.dart';
import 'package:dio/dio.dart';

extension NetEasyRequest on NetEasyCrypto {
  Dio get request {
    switch (this) {
      case NetEasyCrypto.desktop: return buildNetEasyEasyDesktopApiRequest();
      case NetEasyCrypto.linux: return buildNetEasyEasyLinuxApiRequest();

      case NetEasyCrypto.web:
        throw UnsupportedError('Please use NeteaseNetworkWeb.buildNetEasyEasyWebApiRequest instead');
    }
  }
}
