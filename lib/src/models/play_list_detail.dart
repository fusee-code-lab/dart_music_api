import 'package:dart_music_api/music_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_list_detail.freezed.dart';
part 'play_list_detail.g.dart';

@freezed
class PlayListDetail with _$PlayListDetail {
  const factory PlayListDetail({
    required PlayList playList,
    required DateTime createTime,
    required DateTime updateTime,
    required List<Tag> tags,
    required List<String> trackIds,
  }) = _PlayListDetail;

  factory PlayListDetail.fromJson(Map<String, dynamic> json) => _$PlayListDetailFromJson(json);
}
