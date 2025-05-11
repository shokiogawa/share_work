import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/supabase_client.dart';
import 'package:stamp_rally_worship/feature/workspace_list/model/work_space.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'work_space_repository.g.dart';
@riverpod
WorkSpaceRepository workSpaceRepository(Ref ref) {
  return WorkSpaceRepository(ref);
}

class WorkSpaceRepository {
  WorkSpaceRepository(this.ref);

  final Ref ref;

  SupabaseClient get _client => ref.read(supabaseClientProvider);

  Future<List<WorkSpace>> fetchWorkSpaces() async {
    try {
      final response = await _client
          .from('work_spaces')
          .select();
      return response.map(WorkSpace.fromJson).toList();
    } catch (e) {
      throw Exception('Failed to fetch work spaces: $e');
    }
  }
}
