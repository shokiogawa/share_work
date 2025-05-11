import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_space_detail.freezed.dart';
part 'work_space_detail.g.dart';

@freezed
class WorkSpaceDetail with _$WorkSpaceDetail {
  const factory WorkSpaceDetail({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'bgm_title') String? bgmTitle,
    @JsonKey(name: 'bgm_description') String? bgmDescription,
    @JsonKey(name: 'bgm_id') int? bgmId,
    @JsonKey(name: 'music_url') String? musicUrl,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'created_by') int? createdBy,
    @JsonKey(name: 'updated_by') int? updatedBy,
    @JsonKey(name: 'deleted_by') int? deletedBy,
  }) = _WorkSpaceDetail;

  factory WorkSpaceDetail.fromJson(Map<String, dynamic> json) =>
      _$WorkSpaceDetailFromJson(json);
}
