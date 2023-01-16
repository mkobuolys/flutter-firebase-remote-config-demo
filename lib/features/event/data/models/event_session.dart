import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_session.freezed.dart';
part 'event_session.g.dart';

@freezed
class EventSession with _$EventSession {
  const factory EventSession({
    required String id,
    @ColorConverter() required int color,
    required DateTime dateTimeFrom,
    required DateTime dateTimeTo,
    String? title,
    @Default([]) List<String> speakers,
  }) = _EventSession;

  factory EventSession.fromJson(Map<String, dynamic> json) =>
      _$EventSessionFromJson(json);
}

class ColorConverter implements JsonConverter<int, String> {
  const ColorConverter();

  @override
  int fromJson(String color) => int.parse(color);

  @override
  String toJson(int color) => color.toString();
}
