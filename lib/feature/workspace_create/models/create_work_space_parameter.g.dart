// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_work_space_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateWorkSpaceParameterImpl _$$CreateWorkSpaceParameterImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWorkSpaceParameterImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      categoryId: (json['category_id'] as num).toInt(),
      bgmId: (json['bgm_id'] as num).toInt(),
      isActive: json['is_active'] as bool? ?? true,
      createdBy: (json['created_by'] as num).toInt(),
      updatedBy: (json['updated_by'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateWorkSpaceParameterImplToJson(
        _$CreateWorkSpaceParameterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category_id': instance.categoryId,
      'bgm_id': instance.bgmId,
      'is_active': instance.isActive,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };
