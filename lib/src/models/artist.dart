class Artist {
  final String id;
  final String name;

  /// 歌手别名，比如 IU 的别名是 '李知恩'，周兴哲的别名是 'Eric Chou'
  final String? alias;

  // TODO: dive into this (netease)
  final String? coverImageUrl;

  Artist({
    required this.id,
    required this.name,
    this.alias,
    this.coverImageUrl,
  });
}