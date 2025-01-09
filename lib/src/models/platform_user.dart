import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_user.freezed.dart';
part 'platform_user.g.dart';

@freezed
class PlatformUser with _$PlatformUser {
  const factory PlatformUser({
    required String id,
    required String nickname,
  }) = _PlatformUser;

  factory PlatformUser.fromJson(Map<String, dynamic> json) => _$PlatformUserFromJson(json);
}

enum Gender { male, female }
