import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/supabase_client.dart';
import 'package:stamp_rally_worship/feature/workspace/model/work_space_detail.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'work_space_repository.g.dart';

@riverpod
WorkSpaceRepository workSpaceRepository(Ref ref) {
  final client = ref.read(supabaseClientProvider);
  return WorkSpaceRepository(client);
}

class WorkSpaceRepository {
  WorkSpaceRepository(this._supabase);

  final SupabaseClient _supabase;

  Future<WorkSpaceDetail> fetch(int workSpaceId) async {
    try {
      final response = await _supabase
          .from('work_space_detail') // Changed to use the view
          .select()
          .eq('id', workSpaceId)
          .single();
      if (response == null) {
        throw Exception('No workspace found with id: $workSpaceId');
      }
      return WorkSpaceDetail.fromJson(response);
    } on Exception catch (e) {
      // エラー処理
      rethrow;
    }
  }
}
