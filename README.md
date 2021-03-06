# 基于 Dart 与流行网络音乐平台的音乐内容&检索 Api

> ⚠️：开发中。。。

## 特性
- 类型安全
- 空安全 ([Dart Sound null safety](https://dart.dev/null-safety))
- 方便地在 [flutter](https://flutter.dev/) 中使用
- 跨平台使用 (Windows, Linux, macOS, Web, iOS, Android)

## 支持的操作
- 搜索
    - [x] 搜索单曲 (支持分页)
    - [x] 搜索歌单 (支持分页)
    - [x] 搜索歌手 (支持分页)
    - [x] 搜索专辑 (支持分页)
    - [ ] 搜索歌词 (支持分页)
    - [x] 聚合搜索 (支持分页)
- 音乐
    - [x] (聚合)音乐详情
    - [x] 播放文件地址
    - [x] 歌词&歌词翻译
- 专辑
    - [x] 专辑详情
- 歌单
    - [x] 歌单详情
    - [x] 歌单音乐 (支持分页)
- 歌手
    - [x] 歌手细节
    - [x] 歌手音乐 (支持分页)
    
## 使用
### 基础使用
所有平台的 Api 都基于抽象类 `MusicApi`, 因此你可以在[这里](./lib/src/base_api.dart)查看所有支持的 Api 方法的签名。

枚举类型 `Platform` 表示所有支持的音乐平台, 使用 `Platform.xx.api` 来获取某一平台的 Api 实例:
```dart
import 'package:dart_music_api/music_api.dart';

void main() {
  final api = MusicPlatform.netEasy.api;
}
```

使用 `MusicPlatformApi.combinedApi` 来获取所有平台的聚合 Api 实例。

### 分页
对于可分页的 Api, 将返回 `ResultCursor` 类型来支持分页操作，以下是 `ResultCursor` 的用法。

首先, 以搜索歌曲为例:
```dart
void main() {
  MusicPlatformApi.combinedApi.searchSongs('安静');
}
```
设置数量限制 (你不用手动设置偏移，偏移将从0开始自动计算)
```dart
void main() {
    MusicPlatformApi.combinedApi
         .searchSongs('安静')
         .limit(50);
}
```
开始执行搜索并返回结果 (`ResultCursor` 只有调用nextPage后才会真正开始进行搜索等操作)
```dart
void main() {
  MusicPlatformApi.combinedApi
      .searchSongs('安静')
      .limit(50)
      .nextPage();
}
```

## 支持的网络音乐平台
- [网易云音乐](https://music.163.com)
- [qq音乐](https://y.qq.com/)

## 版权
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

MIT License

Copyright (c) 2021 fusée-code-lab

[LICENSE](/LICENSE) file