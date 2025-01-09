class SongLyrics {
  final SongLyricsItem? original;
  final SongLyricsItem? translated;

  SongLyrics({this.original, this.translated});
}

class SongLyricsItem {
  final String strRaw;
  final List<SongLyricsSentence> content;

  SongLyricsItem({ required this.strRaw, required this.content});
}

class SongLyricsSentence {
  final BigInt ms;
  // TODO 用表示时间的模型 例如 TimeOfDay https://api.flutter.dev/flutter/material/TimeOfDay-class.html
  final String startTime;
  final String content;

  SongLyricsSentence({ required this.ms, required this.startTime, required this.content});
}

