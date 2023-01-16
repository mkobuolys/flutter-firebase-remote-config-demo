// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventInfo _$$_EventInfoFromJson(Map<String, dynamic> json) => _$_EventInfo(
      title: json['title'] as String,
      startsAt: DateTime.parse(json['startsAt'] as String),
      sessions: (json['sessions'] as List<dynamic>?)
              ?.map((e) => EventSession.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EventInfoToJson(_$_EventInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'startsAt': instance.startsAt.toIso8601String(),
      'sessions': instance.sessions,
    };
