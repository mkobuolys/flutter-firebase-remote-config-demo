// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventInfo _$EventInfoFromJson(Map<String, dynamic> json) {
  return _EventInfo.fromJson(json);
}

/// @nodoc
mixin _$EventInfo {
  String get title => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  List<EventSession> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventInfoCopyWith<EventInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventInfoCopyWith<$Res> {
  factory $EventInfoCopyWith(EventInfo value, $Res Function(EventInfo) then) =
      _$EventInfoCopyWithImpl<$Res, EventInfo>;
  @useResult
  $Res call({String title, DateTime startsAt, List<EventSession> sessions});
}

/// @nodoc
class _$EventInfoCopyWithImpl<$Res, $Val extends EventInfo>
    implements $EventInfoCopyWith<$Res> {
  _$EventInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<EventSession>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventInfoCopyWith<$Res> implements $EventInfoCopyWith<$Res> {
  factory _$$_EventInfoCopyWith(
          _$_EventInfo value, $Res Function(_$_EventInfo) then) =
      __$$_EventInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime startsAt, List<EventSession> sessions});
}

/// @nodoc
class __$$_EventInfoCopyWithImpl<$Res>
    extends _$EventInfoCopyWithImpl<$Res, _$_EventInfo>
    implements _$$_EventInfoCopyWith<$Res> {
  __$$_EventInfoCopyWithImpl(
      _$_EventInfo _value, $Res Function(_$_EventInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? sessions = null,
  }) {
    return _then(_$_EventInfo(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<EventSession>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventInfo implements _EventInfo {
  const _$_EventInfo(
      {required this.title,
      required this.startsAt,
      final List<EventSession> sessions = const []})
      : _sessions = sessions;

  factory _$_EventInfo.fromJson(Map<String, dynamic> json) =>
      _$$_EventInfoFromJson(json);

  @override
  final String title;
  @override
  final DateTime startsAt;
  final List<EventSession> _sessions;
  @override
  @JsonKey()
  List<EventSession> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'EventInfo(title: $title, startsAt: $startsAt, sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, startsAt,
      const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventInfoCopyWith<_$_EventInfo> get copyWith =>
      __$$_EventInfoCopyWithImpl<_$_EventInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventInfoToJson(
      this,
    );
  }
}

abstract class _EventInfo implements EventInfo {
  const factory _EventInfo(
      {required final String title,
      required final DateTime startsAt,
      final List<EventSession> sessions}) = _$_EventInfo;

  factory _EventInfo.fromJson(Map<String, dynamic> json) =
      _$_EventInfo.fromJson;

  @override
  String get title;
  @override
  DateTime get startsAt;
  @override
  List<EventSession> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_EventInfoCopyWith<_$_EventInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
