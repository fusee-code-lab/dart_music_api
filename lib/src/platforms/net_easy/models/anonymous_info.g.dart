// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anonymous_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NeteaseAnonymousInfoImpl _$$NeteaseAnonymousInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$NeteaseAnonymousInfoImpl(
      ip: json['ip'] as String,
      deviceId: json['deviceId'] as String,
      anonymousToken: json['anonymousToken'] as String?,
    );

Map<String, dynamic> _$$NeteaseAnonymousInfoImplToJson(
        _$NeteaseAnonymousInfoImpl instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'deviceId': instance.deviceId,
      'anonymousToken': instance.anonymousToken,
    };
