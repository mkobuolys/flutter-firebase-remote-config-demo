import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';
part 'app_version.g.dart';

@freezed
class AppVersion with _$AppVersion {
  const factory AppVersion({
    required String version,
    @JsonKey(name: 'build_number') required int buildNumber,
    @JsonKey(name: 'is_optional') @Default(true) bool optional,
  }) = _AppVersion;

  factory AppVersion.fromJson(Map<String, dynamic> json) =>
      _$AppVersionFromJson(json);
}

extension AppVersionX on AppVersion {
  bool compareToPreferred(AppVersion firebaseAppVersion) {
    final curr = splitVersion;
    final upd = firebaseAppVersion.splitVersion;

    if (curr.length != upd.length || curr.length != 3) return false;

    for (var i = 0; i < curr.length; i++) {
      final currSegment = int.tryParse(curr[i]) ?? 0;
      final updSegment = int.tryParse(upd[i]) ?? 0;

      if (currSegment < updSegment) return true;
      if (updSegment < currSegment) return false;
    }

    return buildNumber < firebaseAppVersion.buildNumber;
  }

  List<String> get splitVersion => version.split('.');
}
