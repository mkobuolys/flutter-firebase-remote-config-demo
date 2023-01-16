// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventSession _$$_EventSessionFromJson(Map<String, dynamic> json) =>
    _$_EventSession(
      id: json['id'] as String,
      color: const ColorConverter().fromJson(json['color'] as String),
      dateTimeFrom: DateTime.parse(json['dateTimeFrom'] as String),
      dateTimeTo: DateTime.parse(json['dateTimeTo'] as String),
      title: json['title'] as String?,
      speakers: (json['speakers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EventSessionToJson(_$_EventSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': const ColorConverter().toJson(instance.color),
      'dateTimeFrom': instance.dateTimeFrom.toIso8601String(),
      'dateTimeTo': instance.dateTimeTo.toIso8601String(),
      'title': instance.title,
      'speakers': instance.speakers,
    };
