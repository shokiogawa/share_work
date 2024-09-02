import 'package:freezed_annotation/freezed_annotation.dart';

part 'worship_card.freezed.dart';

part 'worship_card.g.dart';

@freezed
class WorshipCard with _$WorshipCard {
  const factory WorshipCard({
    int? id,
    @JsonKey(name: 'id_shrine') int? idShrine,
    int? number,
    String? comment,
    @JsonKey(name: 'is_current') int? isCurrent,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _WorshipCard;

  // データをjson化
  factory WorshipCard.fromJson(Map<String, dynamic> json) =>
      _$WorshipCardFromJson(json);

  const WorshipCard._();
}
