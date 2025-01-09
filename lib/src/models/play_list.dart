import 'package:dart_music_api/src/models/platform_user.dart';

class PlayList {
  final String id;
  final String name;
  final String coverImageUrl;
  final String description;
  final PlatformUser creator;
  final int songsCount;

  PlayList({
    required this.id,
    required this.name,
    required this.coverImageUrl,
    required this.description,
    required this.creator,
    required this.songsCount,
  });
}