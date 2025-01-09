import 'package:dart_music_api/music_api.dart';
import 'package:dart_music_api/src/models/play_list_detail.dart';
import 'package:dart_music_api/src/response_pack.dart';
import 'package:dart_music_api/src/models/artist_detail.dart';

// TODO 增添异常处理

class CombinedSearchResult {
  final ResultCursor<String, ListResponsePack<Song>> songs;
  final ResultCursor<String, ListResponsePack<PlayList>> playlists;
  final ResultCursor<String, ListResponsePack<Artist>> artists;
  final ResultCursor<String, ListResponsePack<Album>> albums;

  CombinedSearchResult(
      {required this.songs,
      required this.playlists,
      required this.artists,
      required this.albums});
}

abstract class MusicApi {
  MusicApi();

  // search
  ResultCursor<String, ListResponsePack<Song>> searchSongs(String str);
  ResultCursor<String, ListResponsePack<PlayList>> searchPlayLists(String str);
  ResultCursor<String, ListResponsePack<Artist>> searchArtistes(String str);
  ResultCursor<String, ListResponsePack<Album>> searchAlbums(String str);
  CombinedSearchResult combineSearch(String str);

  // song
  Future<ResponsePack<SongDetail>> songDetails(String id);
  Future<ListResponsePack<SongDetail>> songsDetails(List<String> ids);
  // Future<ResponsePack<SongUri>> songUri(String id, {BigInt? bitRate});
  String simpleSongUrL(String id);
  Future<ResponsePack<SongLyrics>> songLyrics(String id);
  // TODO 实现这个 https://binaryify.github.io/NeteaseCloudMusicApi/#/?id=获取音乐-url

  // album
  Future<ResponsePack<AlbumDetail>> albumDetails(String id);

  // play list
  Future<ResponsePack<PlayListDetail>> playListDetails(String id);
  ResultCursor<PlayListDetail, ListResponsePack<Song>> playListSongs(
      PlayListDetail playListDetail);

  // artist
  // TODO 增加获取歌手描述 https://binaryify.github.io/NeteaseCloudMusicApi/#/?id=%e8%8e%b7%e5%8f%96%e6%ad%8c%e6%89%8b%e6%8f%8f%e8%bf%b0
  Future<ResponsePack<ArtistDetail>> artistDetails(String id);
  ResultCursor<String, ListResponsePack<Song>> artistSongs(String id);
}
