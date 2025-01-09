import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_quality.freezed.dart';
part 'song_quality.g.dart';

@freezed
class SongQuality with _$SongQuality {
  const factory SongQuality({
    SongQualityItem? high,
    SongQualityItem? medium,
    SongQualityItem? low,
  }) = _SongQuality;

  factory SongQuality.fromJson(Map<String, dynamic> json) => _$SongQualityFromJson(json);
}

@freezed
class SongQualityItem with _$SongQualityItem {
  const factory SongQualityItem({
    required BigInt bitRate,
    required BigInt bitSize,
  }) = _SongQualityItem;

  factory SongQualityItem.fromJson(Map<String, dynamic> json) => _$SongQualityItemFromJson(json);
}
