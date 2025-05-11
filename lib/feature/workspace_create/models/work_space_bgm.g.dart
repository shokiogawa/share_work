// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_space_bgm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkSpaceBgm _$WorkSpaceBgmFromJson(Map<String, dynamic> json) => WorkSpaceBgm(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String,
      musicUrl: json['musicUrl'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WorkSpaceBgmToJson(WorkSpaceBgm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'title': instance.title,
      'artist': instance.artist,
      'musicUrl': instance.musicUrl,
      'description': instance.description,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
