import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/work_space_category.dart';
import '../repositories/work_space_category_repository.dart';

part 'fetch_work_space_category_providers.g.dart';


@riverpod
Future<List<WorkSpaceCategory>> workSpaceCategories(
    WorkSpaceCategoriesRef ref) async {
  final repository = ref.watch(workSpaceCategoryRepositoryProvider);
  return repository.getCategories();
}