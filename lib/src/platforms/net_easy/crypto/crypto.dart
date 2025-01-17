import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:dart_music_api/src/platforms/net_easy/crypto/base62.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/encrypts.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/public_key.dart';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';

String randomKey(int length) {
  final randomBytes = List<int>.generate(length, (_) => Random.secure().nextInt(256));
  final hexString = randomBytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
  return hexString;
}

extension NetEasyEncryption on NetEasyCrypto {
  Map<String, dynamic> encrypt(
      { required String requestUrl, required Object requestData }) {
    switch (this) {
      case NetEasyCrypto.desktop:
        final jsonStr = json.encode(requestData);
        final message = 'nobody${requestUrl}use${jsonStr}md5forencrypt';
        final digest = md5.convert(utf8.encode(message));
        final data = '$requestUrl-36cd479b6b5-$jsonStr-36cd479b6b5-$digest';

        final encryptedParams = aesEncrypt(
            text: data,
            mode: AESMode.ecb,
            key: apiKey,
        ).base16.toUpperCase();

        return {'params': encryptedParams};

      case NetEasyCrypto.web:
        final jsonStr = json.encode(requestData);
        final base62SecretKeyRaw = Uint8List.fromList(
            List.filled(16, 0)
                .map((e) => Random().nextInt(1062))
                .map((e) => base62sources[e % 62].codeUnitAt(0)).toList()
        );
        final secretKey = Key(base62SecretKeyRaw);

        final encryptedParams = aesEncrypt(
          text: aesEncrypt(
              text: jsonStr,
              mode: AESMode.cbc,
              key: apiKey,
              iv: IV.fromUtf8('0102030405060708'),
          ).base64,
          mode: AESMode.cbc,
          key: secretKey,
          iv: IV.fromUtf8('0102030405060708'),
        ).base64;

        final encryptedSecretKey = rsaEncrypt(
            text: String.fromCharCodes(base62SecretKeyRaw.reversed),
            key: publicKey
        ).base16;

        return {
          'params': encryptedParams,
          'encSecKey': encryptedSecretKey,
        };

      case NetEasyCrypto.linux:
        final jsonStr = json.encode(requestData);

        final encryptedParams = aesEncrypt(
            text: jsonStr,
            mode: AESMode.ecb,
            key: apiKey,
        ).base16.toUpperCase();

        return {
          'params': encryptedParams,
        };
    }
  }
}

void main() {
  print(randomKey(32));
}