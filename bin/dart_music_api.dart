import 'package:dart_music_api/music_api.dart';

void main() async {
  print('搜索单曲');
  final searchCursor = await MusicPlatform.netEasy.api.searchSongs("周兴哲");
  await for (var v in searchCursor.limit(5).nextPage().take(1)) {
    for (final song in v.data) {
      final artists = song.artists.map((e) => e.name).join(', ');
      print("${song.id} ${song.name} $artists");
    }
  }
  print("====================================");

  print("获取单曲详情");
  final songDetail = await MusicPlatform.netEasy.api.songDetails("2049541052");
  print(songDetail.data);


  // final d = await MusicPlatform.netEasy.api.albumDetails('32311');
  // print(d.data?.album.name);

  // final cursor = MusicPlatform.netEasy.api.artistSongs('6452');
  // await for (var v in cursor.limit(5).nextPage().take(1)) {
  //   print(v.data.map((e) => e.name).join('\n'));
  // }
  // final data = await MusicPlatform.netEasy.api.artistDetails('6452');
  // print(data.data?.artist.name);

  // final cursor = MusicPlatform.netEasy.api.searchAlbums('Working Folk');
  // await for (var v in cursor.limit(5).nextPage().take(1)) {
  //   print(v.data.map((e) => e.name).join('\n'));
  // }

  // encrypt demo
  // final data = {
  //   'ids': '[33894312]',
  //   'br': 999000,
  // };
  // final requestData = NetEasyCrypto.desktop.encrypt(
    //   requestUrl: 'https://interface3.music.163.com/eapi/song/enhance/player/url',
  //   requestData: data,
  // );
  // print(requestData);
}