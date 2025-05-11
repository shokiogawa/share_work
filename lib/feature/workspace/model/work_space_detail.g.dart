// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_space_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkSpaceDetailImpl _$$WorkSpaceDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkSpaceDetailImpl(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      categoryName: json['category_name'] as String?,
      bgmTitle: json['bgm_title'] as String?,
      bgmDescription: json['bgm_description'] as String?,
      bgmId: (json['bgm_id'] as num?)?.toInt(),
      musicUrl: json['music_url'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      createdBy: (json['created_by'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      deletedBy: (json['deleted_by'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WorkSpaceDetailImplToJson(
        _$WorkSpaceDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'category_name': instance.categoryName,
      'bgm_title': instance.bgmTitle,
      'bgm_description': instance.bgmDescription,
      'bgm_id': instance.bgmId,
      'music_url': instance.musicUrl,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'deleted_by': instance.deletedBy,
    };
