import 'package:dart_music_api/src/models/artist.dart';
import 'package:dart_music_api/src/models/album.dart';
import 'package:dart_music_api/src/models/play_list.dart';
import 'package:dart_music_api/src/models/song.dart';
import 'package:dart_music_api/src/models/song_detail.dart';
import 'package:dart_music_api/src/models/song_lyrics.dart';
import 'package:dart_music_api/src/models/song_uri.dart';
import 'package:dart_music_api/src/result_cursor.dart';

class CombinedSearchResult {
  final ResultCursor<String, Song> songs;
  final ResultCursor<String, PlayList> playlists;
  final ResultCursor<String, Artist> artists;
  final ResultCursor<String, Album> albums;

  CombinedSearchResult({
    required this.songs,
    required this.playlists,
    required this.artists,
    required this.albums
  });
}

abstract class MusicApi {
  MusicApi();

  // search
  ResultCursor<String, Song> searchSongs(String str);
  ResultCursor<String, PlayList> searchPlayLists(String str);
  ResultCursor<String, Song> searchArtistes(String str);
  ResultCursor<String, Album> searchAlbums(String str);
  CombinedSearchResult combineSearch(String str);

  // song
  Future<SongDetail> songDetail(String id);
  Future<List<SongDetail>> songDetails(List<String> ids);
  Future<SongUri> songUri(String id, { BigInt? bitRate });
  Future<SongLyrics> songLyrics(String id);

  // album
  Future albumDetail(String id);

  // play list
  Future<PlayList> playListDetail(String id);
  ResultCursor<String, Song> playListSongs(String id);

  // artist
  Future<Artist> artistDetail(String id);
  ResultCursor<String, Song> artistSongs(String id);
}
