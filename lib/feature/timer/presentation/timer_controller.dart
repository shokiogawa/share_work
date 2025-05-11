import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/timer_state.dart';

part 'timer_controller.g.dart';

@Riverpod(keepAlive: true)
class TimerController extends _$TimerController {
  Timer? _timer;
  DateTime? _startTime;
  DateTime? _pauseTime;
  int _pausedSeconds = 0;

  @override
  TimerState build() {
    return const TimerState();
  }

  void updateTaskName(String taskName) {
    state = state.copyWith(taskName: taskName);
  }

  void startTimer() {
    if (state.isRunning) {
      return;
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
  }

  void pauseTimer() {
    if (!state.isRunning) {
      return;
    }

    _timer?.cancel();
    _pauseTime = DateTime.now();
    _pausedSeconds = state.elapsedSeconds;
    state = state.copyWith(isRunning: false, timerState: TimerStateEnum.pose);
  }

  void stopTimer() {
    _timer?.cancel();
    _startTime = null;
    _pauseTime = null;
    _pausedSeconds = 0;
    state = state.copyWith(
        elapsedSeconds: 0, isRunning: false, timerState: TimerStateEnum.stop);
  }

  @override
  void dispose() {
    _timer?.cancel();
  }
}
