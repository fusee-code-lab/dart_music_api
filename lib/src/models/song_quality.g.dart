// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongQualityImpl _$$SongQualityImplFromJson(Map<String, dynamic> json) =>
    _$SongQualityImpl(
      high: json['high'] == null
          ? null
          : SongQualityItem.fromJson(json['high'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : SongQualityItem.fromJson(json['medium'] as Map<String, dynamic>),
      low: json['low'] == null
          ? null
          : SongQualityItem.fromJson(json['low'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongQualityImplToJson(_$SongQualityImpl instance) =>
    <String, dynamic>{
      'high': instance.high,
      'medium': instance.medium,
      'low': instance.low,
    };

_$SongQualityItemImpl _$$SongQualityItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SongQualityItemImpl(
      bitRate: BigInt.parse(json['bitRate'] as String),
      bitSize: BigInt.parse(json['bitSize'] as String),
    );

Map<String, dynamic> _$$SongQualityItemImplToJson(
        _$SongQualityItemImpl instance) =>
    <String, dynamic>{
      'bitRate': instance.bitRate.toString(),
      'bitSize': instance.bitSize.toString(),
    };
