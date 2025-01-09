import 'package:dart_music_api/music_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_detail.freezed.dart';
part 'artist_detail.g.dart';

@freezed
class ArtistDetail with _$ArtistDetail {
  const factory ArtistDetail({
    required Artist artist,
    required int albumCount,
    required int musicCount,
    required int mvCount,
    required String briefDescription,
  }) = _ArtistDetail;

  factory ArtistDetail.fromJson(Map<String, dynamic> json) => _$ArtistDetailFromJson(json);
}
