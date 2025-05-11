// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_space.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkSpaceImpl _$$WorkSpaceImplFromJson(Map<String, dynamic> json) =>
    _$WorkSpaceImpl(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      deletedBy: (json['deletedBy'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WorkSpaceImplToJson(_$WorkSpaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'deletedBy': instance.deletedBy,
    };
