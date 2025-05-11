import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/timer/domain/work.dart';
import 'package:stamp_rally_worship/feature/timer/repository/work_repository.dart';
part 'work_controller.g.dart';

@riverpod
class WorkController extends _$WorkController {
  WorkRepository get _workRepository => ref.read(workRepositoryProvider);
  
  @override
  Future<Work?> build() async {
    return null;
  }

  /// タイマー開始時に作業データを作成
  Future<Work> createWork({
    required String name,
    required int userId,
  }) async {
    state = const AsyncValue.loading();
    
    final now = DateTime.now();
    // 初期状態はrunning
    final work = await _workRepository.createWork(
      name: name,
      status: WorkStatus.running,
      startDate: now,
      endDate: null, // 終了時間はnullで作成
      createdBy: userId,
    );
    
    state = AsyncValue.data(work);
    return work;
  }

  /// タイマーポーズ時にステータスを更新
  Future<Work?> updateToPaused({
    required int workId,
    required int userId,
  }) async {
    state = const AsyncValue.loading();
    
    final work = await _workRepository.updateWork(
      id: workId,
      status: WorkStatus.pose,
      updatedBy: userId,
    );
    
    state = AsyncValue.data(work);
    return work;
  }

  /// タイマー再開時にステータスを更新
  Future<Work?> updateToRunning({
    required int workId,
    required int userId,
  }) async {
    state = const AsyncValue.loading();
    
    final work = await _workRepository.updateWork(
      id: workId,
      status: WorkStatus.running,
      updatedBy: userId,
    );
    
    state = AsyncValue.data(work);
    return work;
  }

  /// タイマー終了時にステータスを更新
  Future<Work?> updateToFinished({
    required int workId,
    required int userId,
  }) async {
    state = const AsyncValue.loading();
    
    final work = await _workRepository.updateWork(
      id: workId,
      status: WorkStatus.finish,
      endDate: DateTime.now(), // 実際の終了時間を設定
      updatedBy: userId,
    );
    
    state = AsyncValue.data(work);
    return work;
  }
}   