import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:dart_music_api/src/models/song.dart';

part 'album_detail.freezed.dart';
part 'album_detail.g.dart';

@freezed
class AlbumDetail with _$AlbumDetail {
  const factory AlbumDetail({
    required Album album,
    required List<Artist> artists,
    required String description,
    required DateTime publishDate,
    required List<Song> songs,
  }) = _AlbumDetail;

  factory AlbumDetail.fromJson(Map<String, dynamic> json) => _$AlbumDetailFromJson(json);
}
