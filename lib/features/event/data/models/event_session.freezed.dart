// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventSession _$EventSessionFromJson(Map<String, dynamic> json) {
  return _EventSession.fromJson(json);
}

/// @nodoc
mixin _$EventSession {
  String get id => throw _privateConstructorUsedError;
  @ColorConverter()
  int get color => throw _privateConstructorUsedError;
  DateTime get dateTimeFrom => throw _privateConstructorUsedError;
  DateTime get dateTimeTo => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<String> get speakers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSessionCopyWith<EventSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSessionCopyWith<$Res> {
  factory $EventSessionCopyWith(
          EventSession value, $Res Function(EventSession) then) =
      _$EventSessionCopyWithImpl<$Res, EventSession>;
  @useResult
  $Res call(
      {String id,
      @ColorConverter() int color,
      DateTime dateTimeFrom,
      DateTime dateTimeTo,
      String? title,
      List<String> speakers});
}

/// @nodoc
class _$EventSessionCopyWithImpl<$Res, $Val extends EventSession>
    implements $EventSessionCopyWith<$Res> {
  _$EventSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? dateTimeFrom = null,
    Object? dateTimeTo = null,
    Object? title = freezed,
    Object? speakers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      dateTimeFrom: null == dateTimeFrom
          ? _value.dateTimeFrom
          : dateTimeFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTimeTo: null == dateTimeTo
          ? _value.dateTimeTo
          : dateTimeTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      speakers: null == speakers
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventSessionCopyWith<$Res>
    implements $EventSessionCopyWith<$Res> {
  factory _$$_EventSessionCopyWith(
          _$_EventSession value, $Res Function(_$_EventSession) then) =
      __$$_EventSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @ColorConverter() int color,
      DateTime dateTimeFrom,
      DateTime dateTimeTo,
      String? title,
      List<String> speakers});
}

/// @nodoc
class __$$_EventSessionCopyWithImpl<$Res>
    extends _$EventSessionCopyWithImpl<$Res, _$_EventSession>
    implements _$$_EventSessionCopyWith<$Res> {
  __$$_EventSessionCopyWithImpl(
      _$_EventSession _value, $Res Function(_$_EventSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? dateTimeFrom = null,
    Object? dateTimeTo = null,
    Object? title = freezed,
    Object? speakers = null,
  }) {
    return _then(_$_EventSession(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      dateTimeFrom: null == dateTimeFrom
          ? _value.dateTimeFrom
          : dateTimeFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTimeTo: null == dateTimeTo
          ? _value.dateTimeTo
          : dateTimeTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      speakers: null == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventSession implements _EventSession {
  const _$_EventSession(
      {required this.id,
      @ColorConverter() required this.color,
      required this.dateTimeFrom,
      required this.dateTimeTo,
      this.title,
      final List<String> speakers = const []})
      : _speakers = speakers;

  factory _$_EventSession.fromJson(Map<String, dynamic> json) =>
      _$$_EventSessionFromJson(json);

  @override
  final String id;
  @override
  @ColorConverter()
  final int color;
  @override
  final DateTime dateTimeFrom;
  @override
  final DateTime dateTimeTo;
  @override
  final String? title;
  final List<String> _speakers;
  @override
  @JsonKey()
  List<String> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  String toString() {
    return 'EventSession(id: $id, color: $color, dateTimeFrom: $dateTimeFrom, dateTimeTo: $dateTimeTo, title: $title, speakers: $speakers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.dateTimeFrom, dateTimeFrom) ||
                other.dateTimeFrom == dateTimeFrom) &&
            (identical(other.dateTimeTo, dateTimeTo) ||
                other.dateTimeTo == dateTimeTo) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, color, dateTimeFrom,
      dateTimeTo, title, const DeepCollectionEquality().hash(_speakers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSessionCopyWith<_$_EventSession> get copyWith =>
      __$$_EventSessionCopyWithImpl<_$_EventSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventSessionToJson(
      this,
    );
  }
}

abstract class _EventSession implements EventSession {
  const factory _EventSession(
      {required final String id,
      @ColorConverter() required final int color,
      required final DateTime dateTimeFrom,
      required final DateTime dateTimeTo,
      final String? title,
      final List<String> speakers}) = _$_EventSession;

  factory _EventSession.fromJson(Map<String, dynamic> json) =
      _$_EventSession.fromJson;

  @override
  String get id;
  @override
  @ColorConverter()
  int get color;
  @override
  DateTime get dateTimeFrom;
  @override
  DateTime get dateTimeTo;
  @override
  String? get title;
  @override
  List<String> get speakers;
  @override
  @JsonKey(ignore: true)
  _$$_EventSessionCopyWith<_$_EventSession> get copyWith =>
      throw _privateConstructorUsedError;
}
