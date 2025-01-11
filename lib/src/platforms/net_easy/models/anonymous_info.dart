
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anonymous_info.freezed.dart';
part 'anonymous_info.g.dart';

@freezed
class NeteaseAnonymousInfo with _$NeteaseAnonymousInfo {
  const factory NeteaseAnonymousInfo({
    required String ip,
    required String deviceId,
    String? anonymousToken,
  }) = _NeteaseAnonymousInfo;

  factory NeteaseAnonymousInfo.fromJson(Map<String, dynamic> json) =>
      _$NeteaseAnonymousInfoFromJson(json);
}