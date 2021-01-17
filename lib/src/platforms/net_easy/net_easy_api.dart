import 'package:dart_music_api/src/base_api.dart';
import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:dart_music_api/src/models/play_list.dart';
import 'package:dart_music_api/src/models/song.dart';
import 'package:dart_music_api/src/models/song_detail.dart';
import 'package:dart_music_api/src/models/song_lyrics.dart';
import 'package:dart_music_api/src/models/song_uri.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/request/net_easy_request.dart';
import 'package:dart_music_api/src/result_cursor.dart';
import 'package:dio/dio.dart';

class NetEasyApi implements MusicApi {
  late final Dio _webDio = NetEasyCrypto.web.request;
  late final Dio _desktopDio = NetEasyCrypto.desktop.request;
  late final Dio _linuxDio = NetEasyCrypto.linux.request;

  @override
  Future albumDetail(String id) async {
    final result =
        await _webDio.post('https://music.163.com/weapi/v1/album/$id');
    print(result.data);
  }

  @override
  Future<Artist> artistDetail(String id) {
    // TODO: implement artistDetail
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, Song> artistSongs(String id) {
    // TODO: implement artistSongs
    throw UnimplementedError();
  }

  @override
  CombinedSearchResult combineSearch(String str) {
    // TODO: implement combineSearch
    throw UnimplementedError();
  }

  @override
  Future<PlayList> playListDetail(String id) {
    // TODO: implement playListDetail
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, Song> playListSongs(String id) {
    // TODO: implement playListSongs
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, Album> searchAlbums(String str) {
    // TODO: implement searchAlbums
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, Song> searchArtistes(String str) {
    // TODO: implement searchArtistes
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, PlayList> searchPlayLists(String str) {
    // TODO: implement searchPlayLists
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, Song> searchSongs(String str) {
    // TODO: implement searchSongs
    throw UnimplementedError();
  }

  @override
  Future<SongDetail> songDetail(String id) {
    // TODO: implement songDetail
    throw UnimplementedError();
  }

  @override
  Future<List<SongDetail>> songDetails(List<String> ids) {
    // TODO: implement songDetails
    throw UnimplementedError();
  }

  @override
  Future<SongLyrics> songLyrics(String id) {
    // TODO: implement songLyrics
    throw UnimplementedError();
  }

  @override
  Future<SongUri> songUri(String id, {BigInt? bitRate}) {
    // TODO: implement songUri
    throw UnimplementedError();
  }
}
