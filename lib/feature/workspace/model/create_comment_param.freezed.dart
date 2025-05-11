// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_comment_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCommentParam _$CreateCommentParamFromJson(Map<String, dynamic> json) {
  return _CreateCommentParam.fromJson(json);
}

/// @nodoc
mixin _$CreateCommentParam {
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_space_id')
  int get workSpaceId => throw _privateConstructorUsedError;

  /// Serializes this CreateCommentParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCommentParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCommentParamCopyWith<CreateCommentParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentParamCopyWith<$Res> {
  factory $CreateCommentParamCopyWith(
          CreateCommentParam value, $Res Function(CreateCommentParam) then) =
      _$CreateCommentParamCopyWithImpl<$Res, CreateCommentParam>;
  @useResult
  $Res call(
      {String content,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'work_space_id') int workSpaceId});
}

/// @nodoc
class _$CreateCommentParamCopyWithImpl<$Res, $Val extends CreateCommentParam>
    implements $CreateCommentParamCopyWith<$Res> {
  _$CreateCommentParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCommentParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? userId = null,
    Object? workSpaceId = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      workSpaceId: null == workSpaceId
          ? _value.workSpaceId
          : workSpaceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCommentParamImplCopyWith<$Res>
    implements $CreateCommentParamCopyWith<$Res> {
  factory _$$CreateCommentParamImplCopyWith(_$CreateCommentParamImpl value,
          $Res Function(_$CreateCommentParamImpl) then) =
      __$$CreateCommentParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'work_space_id') int workSpaceId});
}

/// @nodoc
class __$$CreateCommentParamImplCopyWithImpl<$Res>
    extends _$CreateCommentParamCopyWithImpl<$Res, _$CreateCommentParamImpl>
    implements _$$CreateCommentParamImplCopyWith<$Res> {
  __$$CreateCommentParamImplCopyWithImpl(_$CreateCommentParamImpl _value,
      $Res Function(_$CreateCommentParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCommentParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? userId = null,
    Object? workSpaceId = null,
  }) {
    return _then(_$CreateCommentParamImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      workSpaceId: null == workSpaceId
          ? _value.workSpaceId
          : workSpaceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCommentParamImpl implements _CreateCommentParam {
  const _$CreateCommentParamImpl(
      {required this.content,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'work_space_id') required this.workSpaceId});

  factory _$CreateCommentParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCommentParamImplFromJson(json);

  @override
  final String content;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'work_space_id')
  final int workSpaceId;

  @override
  String toString() {
    return 'CreateCommentParam(content: $content, userId: $userId, workSpaceId: $workSpaceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentParamImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.workSpaceId, workSpaceId) ||
                other.workSpaceId == workSpaceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, userId, workSpaceId);

  /// Create a copy of CreateCommentParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentParamImplCopyWith<_$CreateCommentParamImpl> get copyWith =>
      __$$CreateCommentParamImplCopyWithImpl<_$CreateCommentParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCommentParamImplToJson(
      this,
    );
  }
}

abstract class _CreateCommentParam implements CreateCommentParam {
  const factory _CreateCommentParam(
          {required final String content,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'work_space_id') required final int workSpaceId}) =
      _$CreateCommentParamImpl;

  factory _CreateCommentParam.fromJson(Map<String, dynamic> json) =
      _$CreateCommentParamImpl.fromJson;

  @override
  String get content;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'work_space_id')
  int get workSpaceId;

  /// Create a copy of CreateCommentParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCommentParamImplCopyWith<_$CreateCommentParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
