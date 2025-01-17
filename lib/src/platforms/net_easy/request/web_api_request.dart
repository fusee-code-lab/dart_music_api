import 'dart:convert';
import 'dart:io';

import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/net_easy_api.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/build_header.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/constant.dart';
import 'package:dart_music_api/src/utils/http_header.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

extension NeteaseNetworkWeb on NetEasyApi {
  Dio buildNetEasyEasyWebApiRequest() {
    final netEasyCrypto = NetEasyCrypto.web;
    final dio = Dio();
    dio.options.baseUrl = netEasyBaseUrl;

    final cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        final header = this.buildHeader(
          options: options,
          crypto: netEasyCrypto,
        );

        final String cookies = header[HttpHeaders.cookieHeader] ?? '';
        final Map<String, dynamic> data = options.data ?? {};

        final csrfToken = cookies
            .split('; ')
            .firstWhere((c) => c.split('=').last == '__csrf', orElse: () => '')
            .split('=')
            .last;
        data['csrf_token'] = csrfToken;

        final requestData = netEasyCrypto.encrypt(
          requestUrl: options.uri.path,
          requestData: data,
        );
        final newPath = options.uri.path.replaceAll(
          RegExp(r'\w*api'),
          netEasyCrypto.prefix,
        );

        final newOptions = options
          ..headers = header
          ..queryParameters = requestData
          ..path = newPath;

        return handler.next(newOptions);
      },
      onResponse: (response, handler) {
        if (response.data is String) {
          final strData = response.data as String;
          final jsonData = json.decode(strData);
          response.data = Map<String, dynamic>.from(jsonData);
        }
        return handler.next(response);
      },
    ));

    return dio;
  }
}
