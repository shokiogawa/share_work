import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';
part 'work.g.dart';

enum WorkStatus {
  @JsonValue('running')
  running,
  @JsonValue('pose')
  pose,
  @JsonValue('finish')
  finish,
}

@freezed
class Work with _$Work {
  const factory Work({
    required int id,
    required String uid,
    required String name,
    required WorkStatus status,
    required DateTime startDate,
    required DateTime endDate,
    required bool isActive,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required DateTime? deletedAt,
    required int? createdBy,
    required int? updatedBy,
    required int? deletedBy,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
} 