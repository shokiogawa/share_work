// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_space_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkSpaceCategory _$WorkSpaceCategoryFromJson(Map<String, dynamic> json) =>
    WorkSpaceCategory(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WorkSpaceCategoryToJson(WorkSpaceCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
