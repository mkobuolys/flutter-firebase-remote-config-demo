import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_session.dart';

part 'event_info.freezed.dart';
part 'event_info.g.dart';

@freezed
class EventInfo with _$EventInfo {
  const factory EventInfo({
    required String title,
    required DateTime startsAt,
    @Default([]) List<EventSession> sessions,
  }) = _EventInfo;

  factory EventInfo.fromJson(Map<String, dynamic> json) =>
      _$EventInfoFromJson(json);
}
