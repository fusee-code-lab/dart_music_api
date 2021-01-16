import 'package:dart_music_api/src/base_api.dart';
import 'package:dart_music_api/src/models/Artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:dart_music_api/src/models/album_detail.dart';
import 'package:dart_music_api/src/models/play_list.dart';
import 'package:dart_music_api/src/models/song.dart';
import 'package:dart_music_api/src/models/song_detail.dart';
import 'package:dart_music_api/src/models/song_lyrics.dart';
import 'package:dart_music_api/src/models/song_uri.dart';
import 'package:dart_music_api/src/result_cursor.dart';
import 'package:dart_music_api/src/platform.dart';
import 'package:dart_music_api/src/utils.dart';

class CombinedApi implements MusicApi {
  List<Platform> _platforms = [];
  List<Platform> get platforms => _platforms;
  set platforms(List<Platform> platforms) {
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

  late Platform _curPlatform;
  Platform get curPlatform {
    return _curPlatform;
  }
  set curPlatform(Platform platform) {
    assert(
      _platforms.contains(platforms),
      "Don't using platform not in platforms in this CombinedApi "
          'instance. It will add given platform to platforms implicitly.'
    );
    _curPlatform = platform;
  }

  CombinedApi();
  CombinedApi.of(List<Platform> platforms) {
    this.platforms = platforms;
  }

  CombinedApi platform(Platform platform) {
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
  Future<AlbumDetail> albumDetail(String id) => _curApi.albumDetail(id);

  @override
  Future<Artist> artistDetail(String id) => _curApi.artistDetail(id);

  @override
  ResultCursor<String, Song> artistSongs(String id) => _curApi.artistSongs(id);

  @override
  Future<PlayList> playListDetail(String id) =>
      _curApi.playListDetail(id);

  @override
  ResultCursor<String, Song> playListSongs(String id) =>
      _curApi.playListSongs(id);

  @override
  CombinedSearchResult combineSearch(String str) {
    // TODO: implement combineSearch
    throw UnimplementedError();
  }

  @override
  ResultCursor<String, Album> searchAlbums(String str) =>
      ResultCursor.wait(
          _apis.map((e) => e.searchAlbums(str)).toList(),
          option: str
      );

  @override
  ResultCursor<String, Song> searchArtistes(String str) =>
      ResultCursor.wait(
          _apis.map((e) => e.searchArtistes(str)).toList(),
          option: str
      );

  @override
  ResultCursor<String, PlayList> searchPlayLists(String str) =>
      ResultCursor.wait(
          _apis.map((e) => e.searchPlayLists(str)).toList(),
          option: str
      );

  @override
  ResultCursor<String, Song> searchSongs(String str) =>
      ResultCursor.wait(
        _apis.map((e) => e.searchSongs(str)).toList(),
        option: str
      );

  @override
  Future<SongDetail> songDetail(String id) =>
      _curApi.songDetail(id);

  @override
  Future<List<SongDetail>> songDetails(List<String> ids) =>
      _curApi.songDetails(ids);

  @override
  Future<SongLyrics> songLyrics(String id) => _curApi.songLyrics(id);

  @override
  Future<SongUri> songUri(String id, {BigInt? bitRate}) =>
      _curApi.songUri(id, bitRate: bitRate);
}
