import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/build_header.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/constant.dart';
import 'package:dart_music_api/src/utils/http_header.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

Dio buildNetEasyEasyLinuxApiRequest() {
  final netEasyCrypto = NetEasyCrypto.linux;
  final dio = Dio();
  dio.options.baseUrl = netEasyBaseUrl;

  final cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
    final header = buildHeader(options: options, ua: UserAgentType.linuxDesktop);
    final requestData = netEasyCrypto.encrypt(
      requestUrl: options.uri.toString(),
      requestData: {
        'params': options.data,
        'url': options.uri.toString().replaceAll(RegExp(r'\w*api'), 'api'),
        'method': options.method,
      },
    );
    final newPath = '/api/linux/forward';

    return options
      ..headers = header
      ..queryParameters = requestData
      ..path = newPath;
  }));

  return dio;
}
