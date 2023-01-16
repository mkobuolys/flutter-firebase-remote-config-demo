import 'dart:convert';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_remote_config_service.dart';
import 'models/app_update_status.dart';
import 'models/app_version.dart';

part 'app_update_service.g.dart';

@riverpod
AppUpdateService appUpdateService(AppUpdateServiceRef ref) {
  return AppUpdateService(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
Future<AppUpdateStatus> updateStatus(UpdateStatusRef ref) async {
  return ref.watch(appUpdateServiceProvider).checkForUpdate();
}

class AppUpdateService {
  const AppUpdateService({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  Future<AppUpdateStatus> checkForUpdate() async {
    final json = firebaseRemoteConfigService.getAppVersionJson();
    final appVersion = AppVersion.fromJson(
      jsonDecode(json) as Map<String, dynamic>,
    );

    final packageInfo = await PackageInfo.fromPlatform();
    final currentAppVersion = AppVersion(
      version: packageInfo.version,
      buildNumber: int.tryParse(packageInfo.buildNumber) ?? 0,
    );

    return AppUpdateStatus(
      updateAvailable: currentAppVersion.compareToPreferred(appVersion),
      optional: appVersion.optional,
    );
  }
}
