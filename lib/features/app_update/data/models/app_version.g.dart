// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppVersion _$$_AppVersionFromJson(Map<String, dynamic> json) =>
    _$_AppVersion(
      version: json['version'] as String,
      buildNumber: json['build_number'] as int,
      optional: json['is_optional'] as bool? ?? true,
    );

Map<String, dynamic> _$$_AppVersionToJson(_$_AppVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'build_number': instance.buildNumber,
      'is_optional': instance.optional,
    };
