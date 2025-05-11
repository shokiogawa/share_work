import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_work_space_parameter.freezed.dart';

part 'create_work_space_parameter.g.dart';

@freezed
class CreateWorkSpaceParameter with _$CreateWorkSpaceParameter {
  const factory CreateWorkSpaceParameter({
    required String name,
    required String description,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'bgm_id') required int bgmId,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'updated_by') required int updatedBy,
  }) = _CreateWorkSpaceParameter;

  factory CreateWorkSpaceParameter.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkSpaceParameterFromJson(json);
}
