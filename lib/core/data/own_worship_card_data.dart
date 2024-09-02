import 'package:freezed_annotation/freezed_annotation.dart';

part 'own_worship_card_data.freezed.dart';

part 'own_worship_card_data.g.dart';

@freezed
class OwnWorshipCardData with _$OwnWorshipCardData {
  const factory OwnWorshipCardData({
    int? id,
    @JsonKey(name: 'id_worship_card') int? idWorshipCard,
    @JsonKey(name: 'id_user') int? idUser,
    @JsonKey(name: 'number') String? number,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _OwnWorshipCardData;

  const OwnWorshipCardData._();

  factory OwnWorshipCardData.create(
      int idWorshipCard, int idUser, String number) {
    return OwnWorshipCardData(
        idWorshipCard: idWorshipCard, idUser: idUser, number: number);
  }

  // データをjson化
  factory OwnWorshipCardData.fromJson(Map<String, dynamic> json) =>
      _$OwnWorshipCardDataFromJson(json);
}
