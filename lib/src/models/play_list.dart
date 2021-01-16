import 'package:dart_music_api/src/models/platform_user.dart';
import 'package:dart_music_api/src/models/tag.dart';

class PlayList {
  final String id;
  final String name;
  final DateTime createTime;
  final DateTime updateTime;
  final String coverImageUrl;
  final String description;
  final List<Tag> tags;
  final PlatformUser creator;
  final int songsCount;

  PlayList({
    required this.id,
    required this.name,
    required this.createTime,
    required this.updateTime,
    required this.coverImageUrl,
    required this.description,
    required this.tags,
    required this.creator,
    required this.songsCount,
  });
}