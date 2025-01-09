import 'package:dart_music_api/src/models/platform_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_list.freezed.dart';
part 'play_list.g.dart';

@freezed
class PlayList with _$PlayList {
  const factory PlayList({
    required String id,
    required String name,
    String? coverImageUrl,
    String? description,
    required PlatformUser creator,
    required int songsCount,
  }) = _PlayList;

  factory PlayList.fromJson(Map<String, dynamic> json) => _$PlayListFromJson(json);
}