import 'dart:convert';

import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/net_easy_api.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/build_header.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/constant.dart';
import 'package:dart_music_api/src/utils/http_header.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

extension NeteaseNetworkDesktop on NetEasyApi {
  /// 构建网易云音乐桌面端请求
  /// [doEncrypt] 是否加密请求数据, 默认为true
  Dio buildNetEasyEasyDesktopApiRequest({bool doEncrypt = true}) {
    final netEasyCrypto = NetEasyCrypto.desktop;
    final dio = Dio();
    dio.options.baseUrl = netEasyApiBaseUrl;

    final cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        final header = this.buildHeader(
          options: options,
          crypto: netEasyCrypto,
        );

        final data = options.data;
        if (doEncrypt && data is Map<String, dynamic>) {
          data['header'] = jsonEncode(header);
          data['e_r'] = (data['e_r'] ?? false)
              .toString(); // e_r => encrypt response, 是否加密响应数据, TODO: 支持该配置项
        }

        final requestData = netEasyCrypto.encrypt(
          requestUrl: options.uri.path,
          requestData: data,
        );

        final newPath = doEncrypt == true
            ? options.uri.path
                .replaceAll(RegExp(r'\w*api'), netEasyCrypto.prefix)
            : options.uri.path;

        final newOptions = options
          ..headers = header
          ..queryParameters = requestData
          ..path = newPath;

        // TODO:
        //           if (data.e_r) {
        //   settings = {
        //     ...settings,
        //     encoding: null,
        //     responseType: 'arraybuffer',
        //   }
        // }

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
