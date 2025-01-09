import 'dart:convert';

import 'package:dart_music_api/music_api.dart';
import 'package:dart_music_api/src/models/play_list_detail.dart';
import 'package:dart_music_api/src/response_pack.dart';
import 'package:dart_music_api/src/models/artist_detail.dart';
import 'package:dio/dio.dart';

/// 网易云音乐搜索类型
enum _CloudSearchType {
  song,
  album,
  artist,
  playlist,
  user,
  mv,
  lyrics,
  radioStation,
  video
}

/// 网易云音乐搜索类型接口传惨的值
extension on _CloudSearchType {
  int get value {
    switch (this) {
      case _CloudSearchType.song:
        return 1;
      case _CloudSearchType.album:
        return 10;
      case _CloudSearchType.artist:
        return 100;
      case _CloudSearchType.playlist:
        return 1000;
      case _CloudSearchType.user:
        return 1002;
      case _CloudSearchType.mv:
        return 1004;
      case _CloudSearchType.lyrics:
        return 1006;
      case _CloudSearchType.radioStation:
        return 1009;
      case _CloudSearchType.video:
        return 1014;
    }
  }
}

class NetEasyApi implements MusicApi {
  late final Dio _webDio = NetEasyCrypto.web.request;
  late final Dio _desktopDio = NetEasyCrypto.desktop.request;
  late final Dio _linuxDio = NetEasyCrypto.linux.request;

  /// 网易云音乐通用的搜索
  ResultCursor<Option, ListResponsePack<E>> _cloudSearch<E, Option>(
      _CloudSearchType type,
      Option option,
      List<E> Function(Map<String, dynamic> data) handleFunc) {
    // FIXME: 可能永远不会结束
    return ResultCursor(
        option: option,
        fetchResultFunc: (String option,
            {required int limit, required int offset}) async {
          final data = {
            's': option,
            'type': type.value,
            'limit': limit,
            'offset': offset,
            'total': true,
          };
          final response =
              await _webDio.post('/api/cloudsearch/pc', data: data);
          if (response.data is Map<String, dynamic>) {
            final result = handleFunc(response.data);
            return ListResponsePack.of(response: response, data: result);
          }
          return ListResponsePack<E>.of(response: response, data: []);
        });
  }

  /// 获取歌曲详情
  Future<ListResponsePack<SongDetail>> _songsDetail(List<String> ids) async {
    final data = {
      'c': '[${ids.map((e) => '{ "id": "$e" }').join(',')}]',
      'ids': '[${ids.join(',')}]',
    };
    final response = await _webDio.post('/weapi/v3/song/detail', data: data);
    if (response.data is Map<String, dynamic>) {
      final songsData = List<Map<String, dynamic>>.from(response.data['songs']);

      final songsDetail = songsData.map((e) {
        final albumData = Map<String, dynamic>.from(e['al']);
        final artistsData = List<Map<String, dynamic>>.from(e['ar']);
        final highQualityData =
            e['h'] != null ? Map<String, dynamic>.from(e['h']) : null;
        final mediumQualityData =
            e['m'] != null ? Map<String, dynamic>.from(e['m']) : null;
        final lowQualityData =
            e['l'] != null ? Map<String, dynamic>.from(e['l']) : null;

        final album = Album(
            id: albumData['id'].toString(),
            name: albumData['name'],
            coverImageUrl: albumData['pic_str']);
        final artists = artistsData
            .map((e) => Artist(
                id: e['id'].toString(),
                name: e['name'],
                coverImageUrl: e['img1v1Url']))
            .toList();
        final song = Song(
            id: e['id'].toString(),
            name: e['name'],
            artists: artists,
            duration: Duration(milliseconds: e['dt']),
            album: album);

        return SongDetail(
            song: song,
            quality: SongQuality(
              high: highQualityData?.let(
                (it) => SongQualityItem(
                    bitRate: BigInt.from(it['br']),
                    bitSize: BigInt.from(it['size'])),
              ),
              medium: mediumQualityData?.let(
                (it) => SongQualityItem(
                    bitRate: BigInt.from(it['br']),
                    bitSize: BigInt.from(it['size'])),
              ),
              low: lowQualityData?.let(
                (it) => SongQualityItem(
                    bitRate: BigInt.from(it['br']),
                    bitSize: BigInt.from(it['size'])),
              ),
            ));
      }).toList();

      return ListResponsePack<SongDetail>.of(
          response: response, data: songsDetail);
    }
    return ListResponsePack<SongDetail>.of(response: response, data: []);
  }

  // Future<ResponsePack<SongUri>> songUri(List<String> ids, { BigInt? bitRate }) async {
  //   final data = {
  //     'ids': '[${ids.join(',')}]',
  //     'br': bitRate ?? 999000,
  //   };
  // }

  // TODO 检查这个接口的歌手-歌曲-专辑对应关系
  @override
  Future<ResponsePack<AlbumDetail>> albumDetails(String id) async {
    final response = await _webDio.post('/weapi/v1/album/$id');
    if (response.data is Map<String, dynamic>) {
      final albumData = Map<String, dynamic>.from(response.data['album']);
      final artistsData = List<Map<String, dynamic>>.from(albumData['artists']);
      final songsData = List<Map<String, dynamic>>.from(response.data['songs']);

      final album = Album(
          id: albumData['id'].toString(),
          name: albumData['name'],
          coverImageUrl: albumData['picUrl']);
      final artists = artistsData
          .map((e) => Artist(
                id: e['id'].toString(),
                name: e['name'],
                coverImageUrl: e['img1v1Url'],
              ))
          .toList();
      final songs = songsData
          .map((e) => Song(
              id: e['id'].toString(),
              name: e['name'],
              artists: artists,
              duration: Duration(milliseconds: e['dt']),
              album: album))
          .toList();

      final detail = AlbumDetail(
        album: album,
        artists: artists,
        description: albumData['description'],
        publishDate:
            DateTime.fromMillisecondsSinceEpoch(albumData['publishTime']),
        songs: songs,
      );

      return ResponsePack<AlbumDetail>.of(response: response, data: detail);
    }
    return ResponsePack<AlbumDetail>.of(response: response, data: null);
  }

  @override
  Future<ResponsePack<ArtistDetail>> artistDetails(String id) async {
    final data = {'id': id};
    final response =
        await _webDio.post('/api/artist/head/info/get', data: data);
    if (response.data is Map<String, dynamic>) {
      final data = response.data['data'];
      final artistData = data['artist'];

      final artist = Artist(
          id: artistData['id'].toString(),
          name: artistData['name'],
          coverImageUrl: 'cover');
      final artistDetail = ArtistDetail(
          artist: artist,
          albumCount: artistData['albumSize'],
          musicCount: artistData['musicSize'],
          mvCount: artistData['mvSize'],
          briefDescription: artistData['briefDesc']);

      return ResponsePack<ArtistDetail>.of(
          response: response, data: artistDetail);
    }
    return ResponsePack<ArtistDetail>.of(response: response, data: null);
  }

  @override
  ResultCursor<String, ListResponsePack<Song>> artistSongs(String id) {
    return ResultCursor(
      option: id,
      fetchResultFunc: (String option,
          {required int limit, required int offset}) async {
        // TODO 添加 order 参数
        final data = {
          'id': id,
          'private_cloud': false,
          'work_type': 1,
          'order': 'hot', //hot,time 使用 time 排序会导致 limit 不正常
          'offset': offset,
          'limit': 15,
        };
        final response = await _webDio.post('/api/v1/artist/songs', data: data);
        print(response.data);

        if (response.data is Map<String, dynamic>) {
          final songsData =
              List<Map<String, dynamic>>.from(response.data['songs']);

          final songs = songsData.map((e) {
            final albumData = Map<String, dynamic>.from(e['album']);
            final artistsData = List<Map<String, dynamic>>.from(e['artists']);

            final album = Album(
                id: albumData['id'].toString(),
                name: albumData['name'],
                coverImageUrl: albumData['picUrl']);
            final artists = artistsData
                .map((e) => Artist(
                    id: e['id'].toString(),
                    name: e['name'],
                    coverImageUrl: e['img1v1Url']))
                .toList();

            return Song(
                id: e['id'].toString(),
                name: e['name'],
                artists: artists,
                duration: Duration(milliseconds: e['duration']),
                album: album);
          }).toList();

          return ListResponsePack<Song>.of(response: response, data: songs);
        }
        return ListResponsePack<Song>.of(response: response, data: []);
      },
    );
  }

  @override
  CombinedSearchResult combineSearch(String str) {
    return CombinedSearchResult(
      songs: searchSongs(str),
      playlists: searchPlayLists(str),
      artists: searchArtistes(str),
      albums: searchAlbums(str),
    );
  }

  @override
  Future<ResponsePack<PlayListDetail>> playListDetails(String id) async {
    final data = {
      'id': id,
      'n': 100000,
      's': 0, // 歌单最近的 s 个收藏者,默认为8
    };
    final response =
        await _desktopDio.post('/api/v6/playlist/detail', data: data);
    if (response.data is Map<String, dynamic>) {
      final playListData = Map<String, dynamic>.from(response.data['playlist']);
      final trackIdsData =
          List<Map<String, dynamic>>.from(playListData['trackIds']);
      final creatorData = Map<String, dynamic>.from(playListData['creator']);
      final tagsData = List<String>.from(playListData['tags']);

      final creator = PlatformUser(
          id: creatorData['userId'].toString(),
          nickname: creatorData['nickname']);
      final playList = PlayList(
          id: playListData['id'].toString(),
          name: playListData['name'],
          coverImageUrl: playListData['coverImgUrl'],
          description: playListData['description'],
          creator: creator,
          songsCount: playListData['trackCount']);
      final playListDetail = PlayListDetail(
          playList: playList,
          createTime:
              DateTime.fromMillisecondsSinceEpoch(playListData['createTime']),
          updateTime:
              DateTime.fromMillisecondsSinceEpoch(playListData['updateTime']),
          tags: tagsData.map((e) => Tag(str: e)).toList(),
          trackIds: trackIdsData.map((e) => e['id'].toString()).toList());

      return ResponsePack<PlayListDetail>.of(
          response: response, data: playListDetail);
    }
    return ResponsePack<PlayListDetail>.of(response: response, data: null);
  }

  // TODO 暂时不可分页
  @override
  ResultCursor<PlayListDetail, ListResponsePack<Song>> playListSongs(
      PlayListDetail playListDetail) {
    return ResultCursor(
        option: playListDetail,
        fetchResultFunc: (String option,
            {required int limit, required int offset}) async {
          final songsDetailPack = await _songsDetail(playListDetail.trackIds);
          final songs = songsDetailPack.data.map((e) => e.song).toList();
          return ListResponsePack<Song>(
            status: songsDetailPack.status,
            rawBody: songsDetailPack.rawBody,
            data: songs,
          );
        });
  }

  @override
  ResultCursor<String, ListResponsePack<Album>> searchAlbums(String str) {
    return _cloudSearch(_CloudSearchType.album, str, (data) {
      final albumsData =
          List<Map<String, dynamic>>.from(data['result']['albums']);

      return albumsData
          .map((e) => (Album(
              id: e['id'].toString(),
              name: e['name'],
              coverImageUrl: e['picUrl'])))
          .toList();
    });
  }

  @override
  ResultCursor<String, ListResponsePack<Artist>> searchArtistes(String str) {
    return _cloudSearch(_CloudSearchType.artist, str, (data) {
      final artistsData =
          List<Map<String, dynamic>>.from(data['result']['artists']);

      return artistsData
          .map((e) => Artist(
              id: e['id'].toString(),
              name: e['name'],
              coverImageUrl: e['picUrl']))
          .toList();
    });
  }

  @override
  ResultCursor<String, ListResponsePack<PlayList>> searchPlayLists(String str) {
    return _cloudSearch(_CloudSearchType.playlist, str, (data) {
      final playlistsData =
          List<Map<String, dynamic>>.from(data['result']['playlists']);

      return playlistsData.map((e) {
        final creatorData = Map<String, dynamic>.from(e['creator']);
        return PlayList(
            id: e['id'].toString(),
            name: e['name'],
            coverImageUrl: e['description'],
            description: e['description'],
            creator: PlatformUser(
                id: creatorData['userId'].toString(),
                nickname: creatorData['nickname']),
            songsCount: e['trackCount']);
      }).toList();
    });
  }

  @override
  ResultCursor<String, ListResponsePack<Song>> searchSongs(String str) {
    return _cloudSearch(_CloudSearchType.song, str, (data) {
      final songsData =
          List<Map<String, dynamic>>.from(data['result']['songs']);

      return songsData.map((e) {
        final artistsData = List<Map<String, dynamic>>.from(e['ar']);
        final albumData = Map<String, dynamic>.from(e['al']);

        final artists = artistsData.map(
          (e) {
            dynamic extractAlias(dynamic list) {
              if (list is List) {
                return list.firstOrNull;
              }
              return null;
            }

            // TODO: why e['alias']?.let cause NoSuchMethodError
            final alias = extractAlias(e['alias']) ?? extractAlias(e['alia']);

            return Artist(
              id: e['id'].toString(),
              name: e['name'],
              alias: alias,
              coverImageUrl: e['img1v1Url'],
            );
          },
        ).toList();
        final album = Album(
            id: albumData['id'].toString(),
            name: albumData['name'],
            coverImageUrl: albumData['picUrl']);

        return Song(
            id: e['id'].toString(),
            name: e['name'],
            artists: artists,
            duration: Duration(milliseconds: e['dt']),
            album: album);
      }).toList();
    });
  }

  @override
  Future<ResponsePack<SongDetail>> songDetails(String id) async {
    return (await _songsDetail([id])).let((it) => ResponsePack<SongDetail>(
        status: it.status,
        rawBody: it.rawBody,
        data: it.data.isEmpty ? null : it.data.first));
  }

  @override
  Future<ListResponsePack<SongDetail>> songsDetails(List<String> ids) {
    return _songsDetail(ids);
  }

  @override
  Future<ResponsePack<SongLyrics>> songLyrics(String id) async {
    final data = {
      'id': id,
      'lv': -1,
      'kv': -1,
      'tv': -1,
    };
    final response = await _desktopDio.post('/api/song/lyric', data: data);
    if (response.data is Map<String, dynamic>) {
      final lyricsData = Map<String, dynamic>.from(response.data);
      final originalLyricsData = Map<String, dynamic>.from(lyricsData['lrc']);
      // TODO 还有个 klyric 不知道干嘛的 测试 url http://localhost:3000/lyric?id=33894312
      final translatedLyricsData =
          Map<String, dynamic>.from(lyricsData['tlyric']);

      final originalLyrics = originalLyricsData['lyric'] == ''
          ? null
          : SongLyricsItem(
              strRaw: originalLyricsData['lyric'].toString(),
              content: [] // TODO 歌词解析
              );
      final translatedLyrics = translatedLyricsData['lyric'] == ''
          ? null
          : SongLyricsItem(
              strRaw: translatedLyricsData['lyric'].toString(),
              content: [] // TODO 歌词解析
              );
      final lyrics = SongLyrics(
        original: originalLyrics,
        translated: translatedLyrics,
      );

      return ResponsePack<SongLyrics>.of(response: response, data: lyrics);
    }
    return ResponsePack<SongLyrics>.of(response: response, data: null);
  }

  @override
  String simpleSongUrL(String id) =>
      ' https://music.163.com/song/media/outer/url?id=${id}.mp3';
}
