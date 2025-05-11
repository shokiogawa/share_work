import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/workspace_create/models/create_work_space_parameter.dart';
import 'package:stamp_rally_worship/feature/workspace_create/repositories/work_space_repository.dart';
import 'package:stamp_rally_worship/feature/workspace_list/provider/fetch_work_space_list.dart';

part 'create_work_space_provider.g.dart';

@riverpod
CreateWorkSpace createWorkSpace(Ref ref) {
  return CreateWorkSpace(ref);
}

class CreateWorkSpace {
  CreateWorkSpace(this.ref);
  final Ref ref;

  WorkSpaceRepository get _workSpaceRepository =>
      ref.read(workSpaceRepositoryProvider);

  Future<void> createWorkspace(CreateWorkSpaceParameter data) async {
    await _workSpaceRepository.create(data);
    ref.invalidate(fetchWorkSpaceListProvider);
  }
}
