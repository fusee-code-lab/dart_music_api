import 'dart:convert';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:pointycastle/asymmetric/rsa.dart';

Encrypted aesEncrypt({
  required String text,
  required AESMode mode,
  required Key key,
  IV? iv
}) {
  final encrypt = Encrypter(AES(key, mode: mode, padding: 'PKCS7'));
  return encrypt.encrypt(text, iv: iv);
}

Encrypted rsaEncrypt({required String text, required String key}) {
  final publicKey = RSAKeyParser().parse(key) as PublicKey;
  final rsa = RSAEngine()
    ..init(true, PublicKeyParameter<RSAPublicKey>(publicKey));
  final utf8list = utf8.encode(text);
  final encrypted = rsa.process(Uint8List.fromList(utf8list));
  return Encrypted(encrypted);
}