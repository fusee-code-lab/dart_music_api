// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayListImpl _$$PlayListImplFromJson(Map<String, dynamic> json) =>
    _$PlayListImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
      description: json['description'] as String?,
      creator: PlatformUser.fromJson(json['creator'] as Map<String, dynamic>),
      songsCount: (json['songsCount'] as num).toInt(),
    );

Map<String, dynamic> _$$PlayListImplToJson(_$PlayListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coverImageUrl': instance.coverImageUrl,
      'description': instance.description,
      'creator': instance.creator,
      'songsCount': instance.songsCount,
    };
