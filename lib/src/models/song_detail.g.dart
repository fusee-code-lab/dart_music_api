// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongDetailImpl _$$SongDetailImplFromJson(Map<String, dynamic> json) =>
    _$SongDetailImpl(
      song: Song.fromJson(json['song'] as Map<String, dynamic>),
      quality: SongQuality.fromJson(json['quality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongDetailImplToJson(_$SongDetailImpl instance) =>
    <String, dynamic>{
      'song': instance.song,
      'quality': instance.quality,
    };
