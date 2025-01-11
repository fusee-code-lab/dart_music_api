import 'package:dart_music_api/music_api.dart';
import 'package:dart_music_api/src/utils/http_header.dart';

const userAgentMap = {
  NetEasyCrypto.web: {
    UserAgentType.pc:
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0',
  },
  NetEasyCrypto.linux: {
    UserAgentType.linuxDesktop:
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
  },
  NetEasyCrypto.desktop: {
    UserAgentType.pc:
        'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36 Chrome/91.0.4472.164 NeteaseMusicDesktop/3.0.18.203152',
    UserAgentType.android:
        'NeteaseMusic/9.1.65.240927161425(9001065);Dalvik/2.1.0 (Linux; U; Android 14; 23013RK75C Build/UKQ1.230804.001)',
    UserAgentType.iphone: 'NeteaseMusic 9.0.90/5038 (iPhone; iOS 16.2; zh_CN)',
  },
};

extension NeteaseUserAgent on NetEasyCrypto {
  String chooseUserAgent({UserAgentType preferredType = UserAgentType.pc}) {
    final aviailableUserAgent = userAgentMap[this]!;
    return aviailableUserAgent[preferredType] ?? aviailableUserAgent.entries.first.value;
  }
}
