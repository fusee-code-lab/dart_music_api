class SongUri {
  final String id;
  final String url;
  final BigInt bitRate;
  final BigInt bitSize;
  final String md5CheckSum;
  final String fileType;

  SongUri({
    required this.id,
    required this.url,
    required this.bitRate,
    required this.bitSize,
    required this.md5CheckSum,
    required this.fileType
  });
}