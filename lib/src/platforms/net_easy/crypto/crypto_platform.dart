import 'package:encrypt/encrypt.dart';

enum NetEasyCrypto {
  /// 非 linux 桌面端 Api，前缀为 eapi
  desktop,
  /// web 端 Api，前缀为 weapi
  web,
  /// linux 桌面端 Api，前缀为 linuxapi
  linux
}

extension NetEasyCryptoApiKey on NetEasyCrypto {
  String get prefix {
    switch (this) {
      case NetEasyCrypto.desktop: return 'eapi';
      case NetEasyCrypto.web: return 'weapi';
      case NetEasyCrypto.linux: return 'linuxapi';
    }
}
  Key get apiKey {
    switch (this) {
      case NetEasyCrypto.desktop: return Key.fromUtf8('e82ckenh8dichen8');
      case NetEasyCrypto.web: return Key.fromUtf8('0CoJUm6Qyw8W8jud');
      case NetEasyCrypto.linux: return Key.fromUtf8('rFgB&h#%2?^eDg:Q');
    }
  }
}