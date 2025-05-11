import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/timer/repository/work_repository.dart';
part 'work_controller.g.dart';

@riverpod
class WorkController extends _$WorkController {
  WorkRepository get _workRepository => ref.read(workRepositoryProvider);
  @override
  void build() async {
  }

  Future<void> createWork()async{
    // await _workRepository.createWork(
    // )
  }

  // Future<List<Work>>

  // WorkRepository get _workerRepository  => ref.read(workRepositoryProvider)

  // Future<void> createWork({
  //   required String name,
  //   required WorkStatus status,
  //   required DateTime startDate,
  //   required DateTime endDate,
  //   required int createdBy,
  // }) async {
  //   state = const AsyncValue.loading();
  //   state = await AsyncValue.guard(() async {
  //     await ref.read(workRepositoryProvider).createWork(
  //           name: name,
  //           status: status,
  //           startDate: startDate,
  //           endDate: endDate,
  //           createdBy: createdBy,
  //         );
  //     return ref.read(workRepositoryProvider).getWorks();
  //   });
  // }
  //
  // Future<void> updateWork({
  //   required int id,
  //   String? name,
  //   WorkStatus? status,
  //   DateTime? startDate,
  //   DateTime? endDate,
  //   required int updatedBy,
  // }) async {
  //   state = const AsyncValue.loading();
  //   state = await AsyncValue.guard(() async {
  //     await ref.read(workRepositoryProvider).updateWork(
  //           id: id,
  //           name: name,
  //           status: status,
  //           startDate: startDate,
  //           endDate: endDate,
  //           updatedBy: updatedBy,
  //         );
  //     return ref.read(workRepositoryProvider).getWorks();
  //   });
  // }
  //
  // Future<void> deleteWork({
  //   required int id,
  //   required int deletedBy,
  // }) async {
  //   state = const AsyncValue.loading();
  //   state = await AsyncValue.guard(() async {
  //     await ref.read(workRepositoryProvider).deleteWork(
  //           id: id,
  //           deletedBy: deletedBy,
  //         );
  //     return ref.read(workRepositoryProvider).getWorks();
  //   });
  // }
  //
  // Future<void> refresh() async {
  //   state = const AsyncValue.loading();
  //   state = await AsyncValue.guard(() async {
  //     return ref.read(workRepositoryProvider).getWorks();
  //   });
  // }
} 