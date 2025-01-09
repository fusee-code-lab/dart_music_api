import 'package:dart_music_api/src/base_api.dart';
import 'package:dart_music_api/src/models/play_list_detail.dart';
import 'package:dart_music_api/src/response_pack.dart';
import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:dart_music_api/src/models/album_detail.dart';
import 'package:dart_music_api/src/models/artist_detail.dart';
import 'package:dart_music_api/src/models/play_list.dart';
import 'package:dart_music_api/src/models/song.dart';
import 'package:dart_music_api/src/models/song_detail.dart';
import 'package:dart_music_api/src/models/song_lyrics.dart';
import 'package:dart_music_api/src/result_cursor.dart';

class QQApi implements MusicApi {
  @override
  Future<ResponsePack<AlbumDetail>> albumDetails(String id) {
    // TODO: implement albumDetail
    throw UnimplementedError();
  }

  @override
  Future<ResponsePack<ArtistDetail>> artistDetails(String id) {
    // TODO: implement artistDetail
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, ListResponsePack<Song>> artistSongs(String id) {
    // TODO: implement artistSongs
    throw UnimplementedError();
  }

  @override
  CombinedSearchResult combineSearch(String str) {
    // TODO: implement combineSearch
    throw UnimplementedError();
  }

  @override
  Future<ResponsePack<PlayListDetail>> playListDetails(String id) {
    // TODO: implement playListDetail
    throw UnimplementedError();
  }

  @override
  ResultCursor<PlayListDetail, ListResponsePack<Song>> playListSongs(
      PlayListDetail playListDetail) {
    // TODO: implement playListSongs
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, ListResponsePack<Album>> searchAlbums(String str) {
    // TODO: implement searchAlbums
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, ListResponsePack<Artist>> searchArtistes(String str) {
    // TODO: implement searchArtistes
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, ListResponsePack<PlayList>> searchPlayLists(String str) {
    // TODO: implement searchPlayLists
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, ListResponsePack<Song>> searchSongs(String str) {
    // TODO: implement searchSongs
    throw UnimplementedError();
  }

  @override
  Future<ResponsePack<SongDetail>> songDetails(String id) {
    // TODO: implement songDetail
    throw UnimplementedError();
  }

  @override
  Future<ListResponsePack<SongDetail>> songsDetails(List<String> ids) {
    // TODO: implement songDetails
    throw UnimplementedError();
  }

  @override
  Future<ResponsePack<SongLyrics>> songLyrics(String id) {
    // TODO: implement songLyrics
    throw UnimplementedError();
  }

  // @override
  // Future<ResponsePack<SongUri>> songUri(String id, {BigInt? bitRate}) {
  //   // TODO: implement songUri
  //   throw UnimplementedError();
  // }

  @override
  String simpleSongUrl(String id) {
    // TODO: implement simpleSongUrL
    throw UnimplementedError();
  }
}
