import 'package:freezed_annotation/freezed_annotation.dart';

part 'shrine.freezed.dart';

part 'shrine.g.dart';

enum TypeRegisterStamp { gps, qr, normal }

@freezed
class Shrine with _$Shrine {
  const factory Shrine(
      {required int id,
      @JsonKey(name: 'id_place') required int idPlace,
       String? name,
      @JsonKey(name: 'area_name') String? areaName,
      required String ruby,
      required double latitude,
      required double longitude,
      @JsonKey(name: 'type_register_stamp')
      required TypeRegisterStamp typeRegisterStamp,
      @Default('') String url,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt}) = _Shrine;

  // データをjson化
  factory Shrine.fromJson(Map<String, dynamic> json) => _$ShrineFromJson(json);

  const Shrine._();
}
