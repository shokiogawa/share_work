import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stamp_rally_worship/core/data/base_select_model.dart';

part 'work_space_category.g.dart';

@JsonSerializable()
@immutable
class WorkSpaceCategory implements BaseSelectModel {
  const WorkSpaceCategory({
    required this.id,
    required this.uid,
    required this.name,
    this.description,
    this.isActive = true,
    this.createdAt,
    this.updatedAt,
  });

  factory WorkSpaceCategory.fromJson(Map<String, dynamic> json) =>
      _$WorkSpaceCategoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WorkSpaceCategoryToJson(this);

  final int id;
  final String uid;
  final String name;
  final String? description;
  final bool isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}

