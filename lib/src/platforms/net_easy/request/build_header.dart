import 'dart:io';

import 'package:dart_music_api/src/utils/http_header.dart';
import 'package:dart_music_api/src/utils/http_method.dart';
import 'package:dio/dio.dart';

Map<String, dynamic> buildHeader(
    {required RequestOptions options, required UserAgentType ua}) {
  final headers = options.headers ?? {};
  headers[HttpHeaders.userAgentHeader] = chooseUserAgent(ua);
  if (options.method.toUpperCase() == RequestMethod.POST.toString()) {
    headers[HttpHeaders.contentTypeHeader] =
        'application/x-www-form-urlencoded';
  }
  if (options.uri.host.contains('music.163.com')) {
    headers[HttpHeaders.refererHeader] = 'https://music.163.com';
  }
  return headers;
}
