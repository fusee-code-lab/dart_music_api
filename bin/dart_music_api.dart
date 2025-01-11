import 'dart:convert';
import 'dart:io';

import 'package:dart_music_api/music_api.dart';

final encoder = JsonEncoder.withIndent('  ');

void main() async {
  final api = MusicPlatform.netEasy.api;
  await api.init();

  print("获取歌曲 url");
  final songUri = await api.songUri("523250334");
  print(songUri.data);
  print("====================================");
  exit(0);

  print('搜索单曲');
  final searchCursor = api.searchSongs("周兴哲");
  await for (var v in searchCursor.limit(5).allPages().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
  print("====================================");

  print("搜索歌单");
  final searchCursor2 = api.searchPlayLists("周兴哲");
  await for (var v in searchCursor2.limit(5).allPages().take(1)) {
    for (final playList in v.data) {
      print("${playList.id} ${playList.name}");
    }
  }
  print("====================================");

  print("搜索歌手");
  final searchCursor3 = api.searchArtistes("周兴哲");
  await for (var v in searchCursor3.limit(5).allPages().take(1)) {
    for (final artist in v.data) {
      print("${artist.id} ${artist.name}");
    }
  }
  print("====================================");

  print("获取单曲详情");
  final songDetail = await api.songDetails("2049541052");
  print(encoder.convert(songDetail.data?.toJson()));
  print("====================================");

  print("获取歌曲播放地址");
  final songUrl = api.simpleSongUrl("2049541052");
  print("简单播放地址: $songUrl");
  print("====================================");

  print("获取歌词");
  final songLyrics = await api.songLyrics("2049541052");
  print(encoder.convert(songLyrics.data?.toJson()));
  print("====================================");

  print("专辑详情");
  final albunmDetail = await api.albumDetails('32311');
  print(albunmDetail.data?.album.name);
  print("====================================");

  print("歌单详情");
  final playListDetail = await api.playListDetails('2649901470');
  print(encoder.convert(playListDetail.data?.toJson()));
  print("====================================");

  print("获取歌单音乐");
  final playListSongs = api.playListSongs(playListDetail.data!);
  await for (var v in playListSongs.limit(5).allPages().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
  print("====================================");

  print("获取歌手详情");
  final artistDetail = await api.artistDetails('980025');
  print(artistDetail.data?.artist.name);
  print(artistDetail.data?.artist.alias);
  print(artistDetail.data?.artist.coverImageUrl);
  print("====================================");

  print("获取歌手音乐");
  final artistSong = api.artistSongs('980025');
  await for (var v in artistSong.limit(5).allPages().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
}
