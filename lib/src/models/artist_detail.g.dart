// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDetailImpl _$$ArtistDetailImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDetailImpl(
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
      albumCount: (json['albumCount'] as num).toInt(),
      musicCount: (json['musicCount'] as num).toInt(),
      mvCount: (json['mvCount'] as num).toInt(),
      briefDescription: json['briefDescription'] as String,
    );

Map<String, dynamic> _$$ArtistDetailImplToJson(_$ArtistDetailImpl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'albumCount': instance.albumCount,
      'musicCount': instance.musicCount,
      'mvCount': instance.mvCount,
      'briefDescription': instance.briefDescription,
    };
