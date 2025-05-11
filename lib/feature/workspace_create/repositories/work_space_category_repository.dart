import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/supabase_client.dart';
import '../models/work_space_category.dart';

part 'work_space_category_repository.g.dart';

@Riverpod(keepAlive: true)
WorkSpaceCategoryRepository workSpaceCategoryRepository(
    WorkSpaceCategoryRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return WorkSpaceCategoryRepository(client);
}

class WorkSpaceCategoryRepository {
  WorkSpaceCategoryRepository(this._supabase);

  final SupabaseClient _supabase;

  Future<List<WorkSpaceCategory>> getCategories() async {
    final response = await _supabase
        .from('work_space_categories')
        .select()
        .order('created_at', ascending: false);

    return response.map(WorkSpaceCategory.fromJson).toList();
  }
}
