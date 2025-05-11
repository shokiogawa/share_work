import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_space.freezed.dart';
part 'work_space.g.dart';

@freezed
class WorkSpace with _$WorkSpace {
  const factory WorkSpace({
    required int id,
    required String uid,
    required String name,
    String? description,
    int? categoryId,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    int? createdBy,
    int? updatedBy,
    int? deletedBy,
  }) = _WorkSpace;

  factory WorkSpace.fromJson(Map<String, dynamic> json) =>
      _$WorkSpaceFromJson(json);
}
