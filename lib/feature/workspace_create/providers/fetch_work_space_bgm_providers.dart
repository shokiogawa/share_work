import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/work_space_bgm.dart';
import '../repositories/work_space_bgm_repository.dart';

part 'fetch_work_space_bgm_providers.g.dart';

@riverpod
Future<List<WorkSpaceBgm>> workSpaceBgms(WorkSpaceBgmsRef ref) async {
  final repository = ref.watch(workSpaceBgmRepositoryProvider);
  return repository.getBgms();
}
