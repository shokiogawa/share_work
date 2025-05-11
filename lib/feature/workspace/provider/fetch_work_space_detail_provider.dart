import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/workspace/model/work_space_detail.dart';
import 'package:stamp_rally_worship/feature/workspace/repository/work_space_repository.dart';

part 'fetch_work_space_detail_provider.g.dart';

@riverpod
Future<WorkSpaceDetail> fetchWorkSpaceDetail(Ref ref, int workSpaceId) async {
  final repo = ref.read(workSpaceRepositoryProvider);
  final workSpaces = await repo.fetch(workSpaceId);
  return workSpaces;
}
