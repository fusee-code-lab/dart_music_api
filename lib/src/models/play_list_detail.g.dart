// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayListDetailImpl _$$PlayListDetailImplFromJson(Map<String, dynamic> json) =>
    _$PlayListDetailImpl(
      playList: PlayList.fromJson(json['playList'] as Map<String, dynamic>),
      createTime: DateTime.parse(json['createTime'] as String),
      updateTime: DateTime.parse(json['updateTime'] as String),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackIds:
          (json['trackIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlayListDetailImplToJson(
        _$PlayListDetailImpl instance) =>
    <String, dynamic>{
      'playList': instance.playList,
      'createTime': instance.createTime.toIso8601String(),
      'updateTime': instance.updateTime.toIso8601String(),
      'tags': instance.tags,
      'trackIds': instance.trackIds,
    };
