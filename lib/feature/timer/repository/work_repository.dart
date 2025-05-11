import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/supabase_client.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../domain/work.dart';

part 'work_repository.g.dart';

@riverpod
WorkRepository workRepository(Ref ref) {
  return WorkRepository(ref);
}

class WorkRepository {
  const WorkRepository(this.ref);

  final Ref ref;

  SupabaseClient get _supabase => ref.read(supabaseClientProvider);

  Future<List<Work>> getWorks() async {
    final response = await _supabase
        .from('works')
        .select()
        .eq('is_active', true)
        .order('created_at', ascending: false);

    return response.map(Work.fromJson).toList();
  }

  Future<Work> createWork({
    required String name,
    required WorkStatus status,
    required DateTime startDate,
    required DateTime endDate,
    required int createdBy,
  }) async {
    final response = await _supabase
        .from('works')
        .insert({
          'name': name,
          'status': status.name,
          'start_date': startDate.toIso8601String(),
          'end_date': endDate.toIso8601String(),
          'created_by': createdBy,
        })
        .select()
        .single();

    return Work.fromJson(response);
  }

  Future<Work> updateWork({
    required int id,
    String? name,
    WorkStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    required int updatedBy,
  }) async {
    final updateData = <String, dynamic>{
      'updated_by': updatedBy,
      'updated_at': DateTime.now().toIso8601String(),
    };

    if (name != null) {
      updateData['name'] = name;
    }
    if (status != null) {
      updateData['status'] = status.name;
    }
    if (startDate != null) {
      updateData['start_date'] = startDate.toIso8601String();
    }
    if (endDate != null) updateData['end_date'] = endDate.toIso8601String();

    final response = await _supabase
        .from('works')
        .update(updateData)
        .eq('id', id)
        .select()
        .single();

    return Work.fromJson(response);
  }

  Future<void> deleteWork({
    required int id,
    required int deletedBy,
  }) async {
    await _supabase.from('works').update({
      'is_active': false,
      'deleted_by': deletedBy,
      'deleted_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<Work?> getWorkById(int id) async {
    final response = await _supabase
        .from('works')
        .select()
        .eq('id', id)
        .eq('is_active', true)
        .single();

    return response != null ? Work.fromJson(response) : null;
  }

  Future<Work?> getWorkByUid(String uid) async {
    final response = await _supabase
        .from('works')
        .select()
        .eq('uid', uid)
        .eq('is_active', true)
        .single();

    return response != null ? Work.fromJson(response) : null;
  }
}
