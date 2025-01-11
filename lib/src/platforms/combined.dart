import 'package:dart_music_api/music_api.dart';
import 'package:dart_music_api/src/models/play_list_detail.dart';
import 'package:dart_music_api/src/response_pack.dart';
import 'package:dart_music_api/src/models/artist_detail.dart';
import 'package:dio/dio.dart';

class CombinedApi implements MusicApi {
  List<MusicPlatform> _platforms = [];

  List<MusicPlatform> get platforms => _platforms;

  set platforms(List<MusicPlatform> platforms) {
    assert(
      _platforms.isUnique,
      'Elements in platforms should not be repeated.',
    );
    assert(
      _platforms.isNotEmpty,
      'Platforms cannot be empty.',
    );
    _curPlatform = _platforms[0];
    _platforms = platforms;
  }

  late MusicPlatform _curPlatform;

  MusicPlatform get curPlatform {
    return _curPlatform;
  }

  set curPlatform(MusicPlatform platform) {
    assert(
      _platforms.contains(platform),
      "Don't using platform not in platforms in this CombinedApi "
      'instance. It will add given platform to platforms implicitly.',
    );
    _curPlatform = platform;
  }

  CombinedApi();

  CombinedApi.of(List<MusicPlatform> platforms) {
    this.platforms = platforms;
  }

  CombinedApi platform(MusicPlatform platform) {
    curPlatform = platform;
    return this;
  }

  // TODO 缓存而不是重新创建
  List<MusicApi> get _apis {
    return platforms.map((e) => e.api).toList();
  }

  // TODO 缓存而不是重新创建
  MusicApi get _curApi => curPlatform.api;

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<ResponsePack<AlbumDetail>> albumDetails(String id) =>
      _curApi.albumDetails(id);

  @override
  Future<ResponsePack<ArtistDetail>> artistDetails(String id) =>
      _curApi.artistDetails(id);

  @override
  ResultCursor<String, ListResponsePack<Song>> artistSongs(String id) =>
      _curApi.artistSongs(id);

  @override
  CombinedSearchResult combineSearch(String str) {
    // TODO: implement combineSearch
    throw UnimplementedError();
  }

  @override
  Future<ResponsePack<PlayListDetail>> playListDetails(String id) =>
      _curApi.playListDetails(id);

  @override
  ResultCursor<PlayListDetail, ListResponsePack<Song>> playListSongs(
          PlayListDetail playListDetail) =>
      _curApi.playListSongs(playListDetail);

  @override
  ResultCursor<String, ListResponsePack<Album>> searchAlbums(String str) =>
      ResultCursor.wait(_apis.map((e) => e.searchAlbums(str)).toList(),
          option: str);

  @override
  ResultCursor<String, ListResponsePack<Artist>> searchArtistes(String str) =>
      ResultCursor.wait(_apis.map((e) => e.searchArtistes(str)).toList(),
          option: str);

  @override
  ResultCursor<String, ListResponsePack<PlayList>> searchPlayLists(
          String str) =>
      ResultCursor.wait(_apis.map((e) => e.searchPlayLists(str)).toList(),
          option: str);

  @override
  ResultCursor<String, ListResponsePack<Song>> searchSongs(String str) =>
      ResultCursor.wait(_apis.map((e) => e.searchSongs(str)).toList(),
          option: str);

  @override
  Future<ResponsePack<SongDetail>> songDetails(String id) =>
      _curApi.songDetails(id);

  @override
  Future<ListResponsePack<SongDetail>> songsDetails(List<String> ids) =>
      _curApi.songsDetails(ids);

  @override
  Future<ResponsePack<SongLyrics>> songLyrics(String id) =>
      _curApi.songLyrics(id);

  @override
  Future<ResponsePack<SongUri>> songUri(String id, {BigInt? bitRate}) =>
      _curApi.songUri(id, bitRate: bitRate);

  @override
  String simpleSongUrl(String id) => _curApi.simpleSongUrl(id);

  @override
  void configureDio(void Function(Dio dio) configure) {
    // TODO: implement configureDio
  }
}
