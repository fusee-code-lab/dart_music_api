class SongLyricsAuthor {
  final String id;
  final String nickname;
  final DateTime uploadTime;

  SongLyricsAuthor({
    required this.id,
    required this.nickname,
    required this.uploadTime
  });
}

class SongLyricsSentence {
  final BigInt ms;
  // TODO 用表示时间的模型 例如 TimeOfDay https://api.flutter.dev/flutter/material/TimeOfDay-class.html
  final String startTime;
  final String content;

  SongLyricsSentence({ required this.ms, required this.startTime, required this.content});
}

class SongLyricsItem {
  final String strRaw;
  final SongLyricsAuthor author;
  final List<SongLyricsItem> content;

  SongLyricsItem({ required this.strRaw, required this.author, required this.content});
}

class SongLyrics {
  final SongLyricsItem? original;
  final SongLyricsItem? translated;

  SongLyrics({this.original, this.translated});
}