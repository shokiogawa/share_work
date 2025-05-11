// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCommentParamImpl _$$CreateCommentParamImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCommentParamImpl(
      content: json['content'] as String,
      userId: (json['user_id'] as num).toInt(),
      workSpaceId: (json['work_space_id'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateCommentParamImplToJson(
        _$CreateCommentParamImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'user_id': instance.userId,
      'work_space_id': instance.workSpaceId,
    };
