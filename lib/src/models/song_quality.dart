class SongQuality {
  final SongQualityItem? high;
  final SongQualityItem? medium;
  final SongQualityItem? low;

  SongQuality({this.high, this.medium, this.low});
}

class SongQualityItem {
  final BigInt bitRate;
  final BigInt bitSize;

  const SongQualityItem({required this.bitRate, required this.bitSize});
}
