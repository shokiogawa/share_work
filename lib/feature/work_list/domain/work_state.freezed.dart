// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkState {
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get taskName => throw _privateConstructorUsedError;
  int get elapsedSeconds => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  WorkStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of WorkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkStateCopyWith<WorkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkStateCopyWith<$Res> {
  factory $WorkStateCopyWith(WorkState value, $Res Function(WorkState) then) =
      _$WorkStateCopyWithImpl<$Res, WorkState>;
  @useResult
  $Res call(
      {String userId,
      String userName,
      String taskName,
      int elapsedSeconds,
      bool isRunning,
      DateTime startTime,
      WorkStatus status});
}

/// @nodoc
class _$WorkStateCopyWithImpl<$Res, $Val extends WorkState>
    implements $WorkStateCopyWith<$Res> {
  _$WorkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? taskName = null,
    Object? elapsedSeconds = null,
    Object? isRunning = null,
    Object? startTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      elapsedSeconds: null == elapsedSeconds
          ? _value.elapsedSeconds
          : elapsedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkStateImplCopyWith<$Res>
    implements $WorkStateCopyWith<$Res> {
  factory _$$WorkStateImplCopyWith(
          _$WorkStateImpl value, $Res Function(_$WorkStateImpl) then) =
      __$$WorkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String userName,
      String taskName,
      int elapsedSeconds,
      bool isRunning,
      DateTime startTime,
      WorkStatus status});
}

/// @nodoc
class __$$WorkStateImplCopyWithImpl<$Res>
    extends _$WorkStateCopyWithImpl<$Res, _$WorkStateImpl>
    implements _$$WorkStateImplCopyWith<$Res> {
  __$$WorkStateImplCopyWithImpl(
      _$WorkStateImpl _value, $Res Function(_$WorkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? taskName = null,
    Object? elapsedSeconds = null,
    Object? isRunning = null,
    Object? startTime = null,
    Object? status = null,
  }) {
    return _then(_$WorkStateImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      elapsedSeconds: null == elapsedSeconds
          ? _value.elapsedSeconds
          : elapsedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkStatus,
    ));
  }
}

/// @nodoc

class _$WorkStateImpl implements _WorkState {
  const _$WorkStateImpl(
      {required this.userId,
      required this.userName,
      required this.taskName,
      required this.elapsedSeconds,
      required this.isRunning,
      required this.startTime,
      this.status = WorkStatus.working});

  @override
  final String userId;
  @override
  final String userName;
  @override
  final String taskName;
  @override
  final int elapsedSeconds;
  @override
  final bool isRunning;
  @override
  final DateTime startTime;
  @override
  @JsonKey()
  final WorkStatus status;

  @override
  String toString() {
    return 'WorkState(userId: $userId, userName: $userName, taskName: $taskName, elapsedSeconds: $elapsedSeconds, isRunning: $isRunning, startTime: $startTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkStateImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.elapsedSeconds, elapsedSeconds) ||
                other.elapsedSeconds == elapsedSeconds) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, taskName,
      elapsedSeconds, isRunning, startTime, status);

  /// Create a copy of WorkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkStateImplCopyWith<_$WorkStateImpl> get copyWith =>
      __$$WorkStateImplCopyWithImpl<_$WorkStateImpl>(this, _$identity);
}

abstract class _WorkState implements WorkState {
  const factory _WorkState(
      {required final String userId,
      required final String userName,
      required final String taskName,
      required final int elapsedSeconds,
      required final bool isRunning,
      required final DateTime startTime,
      final WorkStatus status}) = _$WorkStateImpl;

  @override
  String get userId;
  @override
  String get userName;
  @override
  String get taskName;
  @override
  int get elapsedSeconds;
  @override
  bool get isRunning;
  @override
  DateTime get startTime;
  @override
  WorkStatus get status;

  /// Create a copy of WorkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkStateImplCopyWith<_$WorkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
