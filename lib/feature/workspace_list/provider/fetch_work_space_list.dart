import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/workspace_list/model/work_space.dart';
import 'package:stamp_rally_worship/feature/workspace_list/repository/work_space_repository.dart';

part 'fetch_work_space_list.g.dart';

@riverpod
Future<List<WorkSpace>> fetchWorkSpaceList(Ref ref) async {
  final repository = ref.read(workSpaceRepositoryProvider);
  final workSpaces = await repository.fetchWorkSpaces();
  return workSpaces;
}
