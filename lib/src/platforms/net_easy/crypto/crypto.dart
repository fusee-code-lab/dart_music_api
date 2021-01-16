import 'dart:convert';
import 'dart:typed_data';
import 'package:dart_music_api/src/platforms/net_easy/crypto/base62.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/crypto_platform.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/encrypts.dart';
import 'package:dart_music_api/src/platforms/net_easy/crypto/public_key.dart';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';

extension Crypto on NetEasyCrypto {
  Map encryption(NetEasyCrypto crypto,
      { required String requestUrl, required Object requestData }) {
    switch (crypto) {
      case NetEasyCrypto.desktop:
        final jsonStr = json.encode(requestData);
        final message = 'nobody${requestUrl}use${jsonStr}md5forencrypt';
        final digest = md5.convert(utf8.encode(message));
        final data = '${requestUrl}-36cd479b6b5-${jsonStr}-36cd479b6b5-${digest}';

        final encryptedParams = aesEncrypt(
            text: data,
            mode: AESMode.ecb,
            key: apiKey,
        ).base16.toUpperCase();

        return {'params': encryptedParams};

      case NetEasyCrypto.web:
        final jsonStr = json.encode(requestData);
        final secretKeyRaw = Uint8List.fromList(
            List.filled(16, 0)
                .map((e) => base62sources[e % 62].codeUnitAt(e)).toList()
        );
        final secretKey = Key(secretKeyRaw);

        final encryptedParams = aesEncrypt(
          text: aesEncrypt(
              text: jsonStr,
              mode: AESMode.cbc,
              key: apiKey,
          ).base64,
          mode: AESMode.cbc,
          key: secretKey,
          iv: IV.fromUtf8('0102030405060708'),
        ).base64;

        final encryptedSecretKey = rsaEncrypt(
            text: secretKeyRaw.reversed.join(),
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
