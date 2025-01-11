import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';

const userAgentList = [
  'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1',
  'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1',
  'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Mobile/14F89;GameHelper',
  'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A300 Safari/602.1',
  'Mozilla/5.0 (iPad; CPU OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A300 Safari/602.1',
  'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Mobile Safari/537.36',
  'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Mobile Safari/537.36',
  'Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Mobile Safari/537.36',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:46.0) Gecko/20100101 Firefox/46.0',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.1.1 Safari/603.2.4',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:46.0) Gecko/20100101 Firefox/46.0',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/13.10586',
  'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
];

enum UserAgentType {
  android,
  iphone,
  pc,
  linuxDesktop,
}

String chooseUserAgent(UserAgentType? ua) {
  var random = Random();
  if (ua != null) {
    switch (ua) {
      case UserAgentType.pc:
        return userAgentList[(random.nextDouble() * 6).floor() + 9];
      case UserAgentType.android:
        return userAgentList[(random.nextDouble() * 3).floor() + 6];
      case UserAgentType.iphone:
        return userAgentList[(random.nextDouble() * 5).floor()];
      case UserAgentType.linuxDesktop:
        return userAgentList.last;
    }
  } else {
    return userAgentList[(random.nextDouble() * (userAgentList.length - 1)).floor()];
  }
}

String buildCookieValue(Map<String, dynamic> cookie) {
  return cookie.entries.map((e) {
    return '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value ?? '')}';
  }).join('; ');
}

Map<String, dynamic> decodeCookie(RequestOptions options) {
  final String cookie = options.headers[HttpHeaders.cookieHeader] ?? '';
  if (cookie.isEmpty) {
    return {};
  }

  return decodeCookieFromString(cookie);
}

Map<String, dynamic> decodeCookieFromResponse(Response response) {
  final List<String> cookie = response.headers[HttpHeaders.setCookieHeader] ?? [];
  if (cookie.isEmpty) {
    return {};
  }

  final cookieObj = <String, dynamic>{};
  for (final c in cookie) {
    final kv = c.split('; ').first.split('=');
    cookieObj[kv.first] = kv.last;
  }
  return cookieObj;
}

Map<String, dynamic> decodeCookieFromString(String cookie) {
  final cookieMap = cookie.split('; ').map((e) {
    final kv = e.split('=');
    return MapEntry(kv.first, kv.last);
  }).toList();
  return Map<String, dynamic>.fromEntries(cookieMap);
}