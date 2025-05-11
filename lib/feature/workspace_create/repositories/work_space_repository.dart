import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/utility/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/supabase_client.dart';
import '../models/create_work_space_parameter.dart';

part 'work_space_repository.g.dart';

@Riverpod(keepAlive: true)
WorkSpaceRepository workSpaceRepository(WorkSpaceRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return WorkSpaceRepository(client);
}

class WorkSpaceRepository {
  WorkSpaceRepository(this._supabase);

  final SupabaseClient _supabase;

  Future<void> create(CreateWorkSpaceParameter param) async {
    try {
      await _supabase.from('work_spaces').insert(param.toJson());
    } on Exception catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
