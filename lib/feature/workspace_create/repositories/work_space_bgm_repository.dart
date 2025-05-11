import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/workspace_create/models/work_space_bgm.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/supabase_client.dart';

part 'work_space_bgm_repository.g.dart';

@Riverpod(keepAlive: true)
WorkSpaceBgmRepository workSpaceBgmRepository(WorkSpaceBgmRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return WorkSpaceBgmRepository(client);
}

class WorkSpaceBgmRepository {
  WorkSpaceBgmRepository(this._supabase);

  final SupabaseClient _supabase;

  Future<List<WorkSpaceBgm>> getBgms() async {
    final response = await _supabase
        .from('bgms')
        .select()
        .order('created_at', ascending: false);

    return response.map(WorkSpaceBgm.fromJson).toList();
  }
}
