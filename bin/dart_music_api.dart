import 'dart:convert';
import 'dart:io';

import 'package:dart_music_api/music_api.dart';

final encoder = JsonEncoder.withIndent('  ');

void main() async {
  print("获取歌曲 url");
  final songUri = await MusicPlatform.netEasy.api.songUri("523250334");
  print(songUri.data);
  print("====================================");
  exit(0);

  print('搜索单曲');
  final searchCursor = MusicPlatform.netEasy.api.searchSongs("周兴哲");
  await for (var v in searchCursor.limit(5).allPages().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
  print("====================================");

  print("搜索歌单");
  final searchCursor2 = MusicPlatform.netEasy.api.searchPlayLists("周兴哲");
  await for (var v in searchCursor2.limit(5).allPages().take(1)) {
    for (final playList in v.data) {
      print("${playList.id} ${playList.name}");
    }
  }
  print("====================================");

  print("搜索歌手");
  final searchCursor3 = MusicPlatform.netEasy.api.searchArtistes("周兴哲");
  await for (var v in searchCursor3.limit(5).allPages().take(1)) {
    for (final artist in v.data) {
      print("${artist.id} ${artist.name}");
    }
  }
  print("====================================");

  print("获取单曲详情");
  final songDetail = await MusicPlatform.netEasy.api.songDetails("2049541052");
  print(encoder.convert(songDetail.data?.toJson()));
  print("====================================");

  print("获取歌曲播放地址");
  final songUrl = MusicPlatform.netEasy.api.simpleSongUrl("2049541052");
  print("简单播放地址: $songUrl");
  print("====================================");

  print("获取歌词");
  final songLyrics = await MusicPlatform.netEasy.api.songLyrics("2049541052");
  print(encoder.convert(songLyrics.data?.toJson()));
  print("====================================");

  print("专辑详情");
  final albunmDetail = await MusicPlatform.netEasy.api.albumDetails('32311');
  print(albunmDetail.data?.album.name);
  print("====================================");

  print("歌单详情");
  final playListDetail = await MusicPlatform.netEasy.api.playListDetails('2649901470');
  print(encoder.convert(playListDetail.data?.toJson()));
  print("====================================");

  print("获取歌单音乐");
  final playListSongs = MusicPlatform.netEasy.api.playListSongs(playListDetail.data!);
  await for (var v in playListSongs.limit(5).allPages().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
  print("====================================");

  print("获取歌手详情");
  final artistDetail = await MusicPlatform.netEasy.api.artistDetails('980025');
  print(artistDetail.data?.artist.name);
  print(artistDetail.data?.artist.alias);
  print(artistDetail.data?.artist.coverImageUrl);
  print("====================================");

  print("获取歌手音乐");
  final artistSong = MusicPlatform.netEasy.api.artistSongs('980025');
  await for (var v in artistSong.limit(5).allPages().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
}
