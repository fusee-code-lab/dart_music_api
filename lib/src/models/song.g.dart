// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      mvId: json['mvId'] as String?,
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists,
      'duration': instance.duration.inMicroseconds,
      'album': instance.album,
      'mvId': instance.mvId,
    };
