import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_update_status.freezed.dart';

@freezed
class AppUpdateStatus with _$AppUpdateStatus {
  const factory AppUpdateStatus({
    @Default(false) bool updateAvailable,
    @Default(true) bool optional,
  }) = _AppUpdateStatus;
}
