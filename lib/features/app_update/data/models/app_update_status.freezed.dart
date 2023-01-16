// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppUpdateStatus {
  bool get updateAvailable => throw _privateConstructorUsedError;
  bool get optional => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUpdateStatusCopyWith<AppUpdateStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateStatusCopyWith<$Res> {
  factory $AppUpdateStatusCopyWith(
          AppUpdateStatus value, $Res Function(AppUpdateStatus) then) =
      _$AppUpdateStatusCopyWithImpl<$Res, AppUpdateStatus>;
  @useResult
  $Res call({bool updateAvailable, bool optional});
}

/// @nodoc
class _$AppUpdateStatusCopyWithImpl<$Res, $Val extends AppUpdateStatus>
    implements $AppUpdateStatusCopyWith<$Res> {
  _$AppUpdateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateAvailable = null,
    Object? optional = null,
  }) {
    return _then(_value.copyWith(
      updateAvailable: null == updateAvailable
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUpdateStatusCopyWith<$Res>
    implements $AppUpdateStatusCopyWith<$Res> {
  factory _$$_AppUpdateStatusCopyWith(
          _$_AppUpdateStatus value, $Res Function(_$_AppUpdateStatus) then) =
      __$$_AppUpdateStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool updateAvailable, bool optional});
}

/// @nodoc
class __$$_AppUpdateStatusCopyWithImpl<$Res>
    extends _$AppUpdateStatusCopyWithImpl<$Res, _$_AppUpdateStatus>
    implements _$$_AppUpdateStatusCopyWith<$Res> {
  __$$_AppUpdateStatusCopyWithImpl(
      _$_AppUpdateStatus _value, $Res Function(_$_AppUpdateStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateAvailable = null,
    Object? optional = null,
  }) {
    return _then(_$_AppUpdateStatus(
      updateAvailable: null == updateAvailable
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppUpdateStatus implements _AppUpdateStatus {
  const _$_AppUpdateStatus(
      {this.updateAvailable = false, this.optional = true});

  @override
  @JsonKey()
  final bool updateAvailable;
  @override
  @JsonKey()
  final bool optional;

  @override
  String toString() {
    return 'AppUpdateStatus(updateAvailable: $updateAvailable, optional: $optional)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateStatus &&
            (identical(other.updateAvailable, updateAvailable) ||
                other.updateAvailable == updateAvailable) &&
            (identical(other.optional, optional) ||
                other.optional == optional));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateAvailable, optional);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUpdateStatusCopyWith<_$_AppUpdateStatus> get copyWith =>
      __$$_AppUpdateStatusCopyWithImpl<_$_AppUpdateStatus>(this, _$identity);
}

abstract class _AppUpdateStatus implements AppUpdateStatus {
  const factory _AppUpdateStatus(
      {final bool updateAvailable, final bool optional}) = _$_AppUpdateStatus;

  @override
  bool get updateAvailable;
  @override
  bool get optional;
  @override
  @JsonKey(ignore: true)
  _$$_AppUpdateStatusCopyWith<_$_AppUpdateStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
