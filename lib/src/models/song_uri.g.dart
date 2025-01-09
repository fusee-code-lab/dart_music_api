// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_uri.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongUriImpl _$$SongUriImplFromJson(Map<String, dynamic> json) =>
    _$SongUriImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      bitRate: BigInt.parse(json['bitRate'] as String),
      bitSize: BigInt.parse(json['bitSize'] as String),
      md5CheckSum: json['md5CheckSum'] as String,
      fileType: json['fileType'] as String,
    );

Map<String, dynamic> _$$SongUriImplToJson(_$SongUriImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'bitRate': instance.bitRate.toString(),
      'bitSize': instance.bitSize.toString(),
      'md5CheckSum': instance.md5CheckSum,
      'fileType': instance.fileType,
    };
