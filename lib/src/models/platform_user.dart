class PlatformUser {
  final String avatarImageUrl;
  final String nickname;
  final String signature;
  final String description;

  final String backgroundImageUrl;
  final String provinceId;
  final String cityId;
  final Gender? gender;

  PlatformUser({
    required this.avatarImageUrl,
    required this.nickname,
    required this.signature,
    required this.description,
    required this.backgroundImageUrl,
    required this.provinceId,
    required this.cityId,
    required this.gender
  });
}

enum Gender { male, female }
