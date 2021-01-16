import 'dart:typed_data';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:encrypt/encrypt.dart';

String decrypt(Uint8List buffer) {
  return Encrypter(
      AES(
          NetEasyCrypto.desktop.apiKey,
          mode: AESMode.ecb
      )
  ).decrypt(Encrypted(buffer));
}