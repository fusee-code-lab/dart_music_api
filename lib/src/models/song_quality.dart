enum SongQualityLevel {
  height,
  medium,
}

class SongQuality {
  final SongQualityLevel level;
  final BigInt bitRate;
  final BigInt bitSize;

  SongQuality({required this.level, required this.bitRate, required this.bitSize});
}
