import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stamp_rally_worship/core/data/base_select_model.dart';

part 'work_space_bgm.g.dart';

@JsonSerializable()
@immutable
class WorkSpaceBgm implements BaseSelectModel {
  const WorkSpaceBgm({
    required this.id,
    required this.uid,
    required this.title,
    required this.artist,
    this.musicUrl,
    this.description,
    this.isActive = true,
    this.createdAt,
    this.updatedAt,
  });

  factory WorkSpaceBgm.fromJson(Map<String, dynamic> json) =>
      _$WorkSpaceBgmFromJson(json);

  Map<String, dynamic> toJson() => _$WorkSpaceBgmToJson(this);

  final int id;
  final String uid;
  final String title;
  final String artist;
  final String? musicUrl;
  final String? description;
  final bool isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}
