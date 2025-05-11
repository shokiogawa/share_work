import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/usecase/auth/repository/auth_repository.dart';
import 'package:stamp_rally_worship/feature/timer/domain/work.dart';
import 'package:stamp_rally_worship/feature/timer/presentation/work_controller.dart';

import '../domain/timer_state.dart';

part 'timer_controller.g.dart';

@Riverpod(keepAlive: true)
class TimerController extends _$TimerController {
  Timer? _timer;
  DateTime? _startTime;
  DateTime? _pauseTime;
  int _pausedSeconds = 0;
  Work? _currentWork;

  @override
  TimerState build() {
    return const TimerState();
  }

  void updateTaskName(String taskName) {
    state = state.copyWith(taskName: taskName);
  }

  Future<void> startTimer() async {
    if (state.isRunning) {
      return;
    }
    
    // タイマー開始時にworkテーブルにデータを保存
    try {
      final authRepository = ref.read(authRepositoryProvider);
      final userId = await authRepository.getCurrentUserId();
      
      if (userId != null) {
        final workController = ref.read(workControllerProvider.notifier);
        _currentWork = await workController.createWork(
          name: state.taskName,
          userId: userId,
        );
      }
      
      _startTime = DateTime.now();
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        final now = DateTime.now();
        final difference = now.difference(_startTime!);
        state = state.copyWith(
            elapsedSeconds: _pausedSeconds + difference.inSeconds,
            isRunning: true,
            timerState: TimerStateEnum.running);
      });
    } catch (e) {
      // エラーハンドリング
      print('Error starting timer: $e');
      // タイマーは開始するがデータ保存に失敗した場合のハンドリング
      _startTime = DateTime.now();
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        final now = DateTime.now();
        final difference = now.difference(_startTime!);
        state = state.copyWith(
            elapsedSeconds: _pausedSeconds + difference.inSeconds,
            isRunning: true,
            timerState: TimerStateEnum.running);
      });
    }
  }

  Future<void> pauseTimer() async {
    if (!state.isRunning) {
      return;
    }

    _timer?.cancel();
    _pauseTime = DateTime.now();
    _pausedSeconds = state.elapsedSeconds;
    state = state.copyWith(isRunning: false, timerState: TimerStateEnum.pose);
    
    // ポーズ時にworkテーブルのステータスを更新
    try {
      if (_currentWork != null) {
        final authRepository = ref.read(authRepositoryProvider);
        final userId = await authRepository.getCurrentUserId();
        
        if (userId != null) {
          final workController = ref.read(workControllerProvider.notifier);
          await workController.updateToPaused(
            workId: _currentWork!.id,
            userId: userId,
          );
        }
      }
    } catch (e) {
      // エラーハンドリング
      print('Error pausing timer: $e');
    }
  }

  Future<void> resumeTimer() async {
    if (state.isRunning || state.timerState == TimerStateEnum.stop) {
      return;
    }
    
    _startTime = DateTime.now().subtract(Duration(seconds: _pausedSeconds));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final difference = now.difference(_startTime!);
      state = state.copyWith(
          elapsedSeconds: difference.inSeconds,
          isRunning: true,
          timerState: TimerStateEnum.running);
    });
    
    // 再開時にworkテーブルのステータスを更新
    try {
      if (_currentWork != null) {
        final authRepository = ref.read(authRepositoryProvider);
        final userId = await authRepository.getCurrentUserId();
        
        if (userId != null) {
          final workController = ref.read(workControllerProvider.notifier);
          await workController.updateToRunning(
            workId: _currentWork!.id,
            userId: userId,
          );
        }
      }
    } catch (e) {
      // エラーハンドリング
      print('Error resuming timer: $e');
    }
  }

  Future<void> stopTimer() async {
    // 終了時にworkテーブルのステータスを更新
    try {
      if (_currentWork != null) {
        final authRepository = ref.read(authRepositoryProvider);
        final userId = await authRepository.getCurrentUserId();
        
        if (userId != null) {
          final workController = ref.read(workControllerProvider.notifier);
          await workController.updateToFinished(
            workId: _currentWork!.id,
            userId: userId,
          );
        }
      }
    } catch (e) {
      // エラーハンドリング
      print('Error stopping timer: $e');
    }
    
    _timer?.cancel();
    _startTime = null;
    _pauseTime = null;
    _pausedSeconds = 0;
    _currentWork = null;
    state = state.copyWith(
        elapsedSeconds: 0, isRunning: false, timerState: TimerStateEnum.stop);
  }

  @override
  void dispose() {
    _timer?.cancel();
  }
}
