import 'dart:math';

import 'package:dart_music_api/music_api.dart';
const base62sources =
    'abcdefghijklmnopqrstuvwxyz'
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    '0123456789';
void main() {
  MusicPlatform.netEasy.api.albumDetail('32311');
  // print(List.filled(16, 0)
  //     .map((e) => Random().nextInt(62))
  //     .map((e) => base62sources[e % 62].codeUnitAt(0)).toList()
  // );
}