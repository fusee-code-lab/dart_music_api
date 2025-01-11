import 'dart:io';
import 'dart:math';

import 'package:dart_music_api/music_api.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/constant.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/user_agent.dart';
import 'package:dart_music_api/src/utils/http_header.dart';
import 'package:dart_music_api/src/utils/http_method.dart';
import 'package:dio/dio.dart';

const _osMap = {
  'pc': {
    'os': 'pc',
    'appver': '3.0.18.203152',
    'osver': 'Microsoft-Windows-10-Professional-build-22631-64bit',
    'channel': 'netease',
  },
  'linux': {
    'os': 'linux',
    'appver': '1.2.1.0428',
    'osver': 'Deepin 20.9',
    'channel': 'netease',
  },
  'android': {
    'os': 'android',
    'appver': '8.20.20.231215173437',
    'osver': '14',
    'channel': 'xiaomi',
  },
  'iphone': {
    'os': 'iPhone OS',
    'appver': '9.0.90',
    'osver': '16.2',
    'channel': 'distribution',
  },
};

String _buildWNMCID() {
  final characters = 'abcdefghijklmnopqrstuvwxyz';
  final random = List.generate(6, (index) {
    final targetIdx = (Random().nextDouble() * characters.length).floor();
    return characters[targetIdx];
  }).join();
  return '$random.${DateTime.now().millisecondsSinceEpoch}.01.0';
}

@Deprecated("use utils")
String _buildCookieValue(Map<String, dynamic> cookie) {
  return cookie.entries.where((e) => e.value != null).map((e) {
    return '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}';
  }).join('; ');
}

extension NeteaseHttpBuilder on NetEasyApi {
  Map<String, dynamic> buildCommonCookie(Map<String, dynamic> baseCookie) {
    // let _ntes_nuid = CryptoJS.lib.WordArray.random(32).toString()
    final ntesNuid = randomKey(32);
    final ntesNnid = '$ntesNuid,${DateTime.now().millisecondsSinceEpoch}';
    final Map<String, String> os =
        (_osMap[baseCookie['os']] ?? _osMap['iphone'])!;
    final cookoie = {
      ...baseCookie,
      '__remember_me': 'true',
      'ntes_kaola_ad': '1',
      '_ntes_nuid': baseCookie['_ntes_nuid'] ?? ntesNuid,
      '_ntes_nnid': baseCookie['_ntes_nnid'] ?? ntesNnid,
      'WNMCID': _buildWNMCID(),
      'WEVNSM': baseCookie['WEVNSM'] ?? '1.0.0',
      'osver': baseCookie['osver'] ?? os['osver'],
      'deviceId': baseCookie['deviceId'] ?? anonymousLoginInfo?.deviceId,
      'os': baseCookie['os'] ?? os['os'],
      'channel': baseCookie['channel'] ?? os['channel'],
      'appver': baseCookie['appver'] ?? os['appver'],
    };

    // TODO: 处理登录的情况, 如果需要登录，则不需要该参数？
    cookoie['NMTID'] = randomKey(16);

    if (!baseCookie.containsKey('MUSIC_U')) {
      // 游客
      cookoie['MUSIC_A'] =
          baseCookie['MUSIC_A'] ?? anonymousLoginInfo?.anonymousToken;
    }

    return cookoie;
  }

  Map<String, dynamic> buildHeader({
    required RequestOptions options,
    required NetEasyCrypto crypto,
  }) {
    final baseCookie = decodeCookie(options);
    final cookie = buildCommonCookie(baseCookie);

    var ipHeaders = <String, String>{};
    if (anonymousLoginInfo != null) {
      ipHeaders = {
        'X-Real-IP': anonymousLoginInfo!.ip,
        'X-Forwarded-For': anonymousLoginInfo!.ip,
      };
    }

    switch (crypto) {
      case NetEasyCrypto.desktop:
        final defaultBuildVer =
            DateTime.now().millisecondsSinceEpoch.toString().substring(0, 10);
        final csrfToken = cookie['__csrf'] ?? '';
        final requestId =
            '${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(1000).toString().padLeft(4, '0')}';

        final headers = {
          ...options.headers,
          ...ipHeaders,
          'osver': cookie['osver'], // 系统版本
          'deviceId': cookie['deviceId'], // 设备 id
          'os': cookie['os'], // 系统类型
          'appver': cookie['appver'], // app 版本
          'versioncode': cookie['versioncode'] ?? '140', // 版本号
          'mobilename': cookie['mobilename'] ?? '', // 设备 model
          'buildver': cookie['buildver'] ?? defaultBuildVer, // 构建版本
          'resolution': cookie['resolution'] ?? '1920x1080', // 设备分辨率
          '__csrf': csrfToken,
          'channel': cookie['channel'], // 下载渠道
          'requestId': requestId,
        };

        if (cookie.containsKey('MUSIC_U')) {
          headers['MUSIC_U'] = cookie['MUSIC_U'];
        }
        if (cookie.containsKey('MUSIC_A')) {
          headers['MUSIC_A'] = cookie['MUSIC_A'];
        }

        // using new cookie
        headers[HttpHeaders.cookieHeader] = buildCookieValue(headers);

        final userAgent =
            crypto.chooseUserAgent(preferredType: UserAgentType.iphone);
        headers[HttpHeaders.userAgentHeader] = userAgent;

        headers.remove(HttpHeaders.contentTypeHeader);
        headers.removeWhere((key, value) => value == null);
        return headers;
      case NetEasyCrypto.web:
        final headers = options.headers..addAll(ipHeaders);
        headers[HttpHeaders.cookieHeader] = buildCookieValue(cookie);
        headers[HttpHeaders.userAgentHeader] = crypto.chooseUserAgent();
        headers[HttpHeaders.refererHeader] = netEasyBaseUrl;
        headers.removeWhere((key, value) => value == null);
        return headers;
      case NetEasyCrypto.linux:
        throw UnimplementedError();
    }
  }
}

@Deprecated('Use NeteaseHttpBuilder.buildHeader instead')
Map<String, dynamic> buildHeader({
  required RequestOptions options,
  required UserAgentType ua,
}) {
  final headers = options.headers;
  headers[HttpHeaders.userAgentHeader] = chooseUserAgent(ua);
  if (options.method.toUpperCase() == RequestMethod.post.toString()) {
    headers[HttpHeaders.contentTypeHeader] =
        'application/x-www-form-urlencoded';
  }
  if (options.uri.host.contains('music.163.com')) {
    headers[HttpHeaders.refererHeader] = 'https://music.163.com';
  }
  return headers;
}
