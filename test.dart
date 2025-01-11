import 'dart:convert';

import 'package:crypto/crypto.dart';

String _cloudMusicDllEncodeId(String someId) {
  const idXorKey1 = r'3go8&$8*3*3h0k(2)2';
  var xoredString = '';
  for (var i = 0; i < someId.length; i++) {
    final charCode =
        someId.codeUnitAt(i) ^ idXorKey1.codeUnitAt(i % idXorKey1.length);
    xoredString += String.fromCharCode(charCode);
  }
  final digest = md5.convert(utf8.encode(xoredString));
  return base64.encode(digest.bytes);
}

void main() {
  print(_cloudMusicDllEncodeId('1234567890'));
}