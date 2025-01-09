import 'package:dart_music_api/music_api.dart';
const base62sources =
    'abcdefghijklmnopqrstuvwxyz'
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    '0123456789';


void main() async {
  // final d = await MusicPlatform.netEasy.api.albumDetail('32311');
  // print(d.data?.album.name);
  // final cursor = MusicPlatform.netEasy.api.artistSongs('6452');
  // await for (var v in cursor.limit(5).nextPage().take(1)) {
  //   print(v.data.map((e) => e.name).join('\n'));
  // }
  // final data = await MusicPlatform.netEasy.api.artistDetail('6452');
  // print(data.data?.artist.name);

  // final cursor = MusicPlatform.netEasy.api.searchAlbums('非酋');
  // await for (var v in cursor.limit(5).nextPage().take(1)) {
  //   print(v.data.map((e) => e.name).join('\n'));
  // }

  final data = {
    'ids': '[33894312]',
    'br': 999000,
  };
  final requestData = NetEasyCrypto.desktop.encrypt(
    requestUrl: 'https://interface3.music.163.com/eapi/song/enhance/player/url',
    requestData: data,
  );
  print(requestData);


}

// TODO new issue https://github.com/dart-lang/sdk/issues/new

// abstract class Demo<E> {
//   final E data;
//   Demo(this.data);
// }
//
// class Data<E> implements Demo<E?> {
//   @override
//   final E data;
//   Data(this.data);
// }

// class ListData<E> implements Demo<List<E>> {
//   @override
//   final E data;
//   ListData(this.data);
// }