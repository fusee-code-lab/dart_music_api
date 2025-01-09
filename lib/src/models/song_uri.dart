import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_uri.freezed.dart';
part 'song_uri.g.dart';

@freezed
class SongUri with _$SongUri {
  const factory SongUri({
    required String id,
    required String url,
    required BigInt bitRate,
    required BigInt bitSize,
    required String md5CheckSum,
    required String fileType,
  }) = _SongUri;

  factory SongUri.fromJson(Map<String, dynamic> json) => _$SongUriFromJson(json);
}