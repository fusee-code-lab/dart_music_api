import 'package:dart_music_api/music_api.dart';

class PlayListDetail {
  final PlayList playList;
  final DateTime createTime;
  final DateTime updateTime;
  final List<Tag> tags;
  final List<String> trackIds;

  PlayListDetail(
      {required this.playList,
      required this.createTime,
      required this.updateTime,
      required this.tags,
      required this.trackIds});
}
