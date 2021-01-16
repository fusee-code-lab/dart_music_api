import 'package:dart_music_api/src/models/platform_user.dart';

class Artist {
  final String id;
  final String name;
  final String coverImageUrl;
  final PlatformUser? user;
  final String briefDescription;
  final int albumCount;
  final int musicCount;
  final int mvCount;

  Artist({
    required this.id,
    required this.name,
    required this.coverImageUrl,
    this.user,
    required this.briefDescription,
    required this.albumCount,
    required this.musicCount,
    required this.mvCount
  });
}