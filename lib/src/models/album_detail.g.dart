// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumDetailImpl _$$AlbumDetailImplFromJson(Map<String, dynamic> json) =>
    _$AlbumDetailImpl(
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      songs: (json['songs'] as List<dynamic>)
          .map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumDetailImplToJson(_$AlbumDetailImpl instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'description': instance.description,
      'publishDate': instance.publishDate.toIso8601String(),
      'songs': instance.songs,
    };
