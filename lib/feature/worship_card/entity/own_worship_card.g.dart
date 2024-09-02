// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'own_worship_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnWorshipCardImpl _$$OwnWorshipCardImplFromJson(Map<String, dynamic> json) =>
    _$OwnWorshipCardImpl(
      id: (json['id'] as num?)?.toInt(),
      idWorshipCard: (json['id_worship_card'] as num?)?.toInt(),
      idUser: (json['id_user'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      worshipCardList: (json['worship_cards'] as List<dynamic>?)
              ?.map((e) => WorshipCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OwnWorshipCardImplToJson(
        _$OwnWorshipCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_worship_card': instance.idWorshipCard,
      'id_user': instance.idUser,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'worship_cards': instance.worshipCardList,
    };
