import 'dart:math';

int _generateIPSegment() {
  return Random().nextInt(255) + 1;
}

String generateRandomChineseIP() {
  final chinaIPPrefixes = ['116.25', '116.76', '116.77', '116.78'];
  final randomPrefix = chinaIPPrefixes[Random().nextInt(chinaIPPrefixes.length)];
  return '$randomPrefix.${_generateIPSegment()}.${_generateIPSegment()}';
}