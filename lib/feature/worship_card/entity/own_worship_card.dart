import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stamp_rally_worship/feature/worship_card/entity/worship_card.dart';

part 'own_worship_card.freezed.dart';

part 'own_worship_card.g.dart';

@freezed
class OwnWorshipCard with _$OwnWorshipCard {
  const factory OwnWorshipCard(
      {int? id,
      @JsonKey(name: 'id_worship_card') int? idWorshipCard,
      @JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'worship_cards')
      @Default([])
      List<WorshipCard> worshipCardList}) = _OwnWorshipCard;

  // データをjson化
  factory OwnWorshipCard.fromJson(Map<String, dynamic> json) =>
      _$OwnWorshipCardFromJson(json);

  const OwnWorshipCard._();
}
