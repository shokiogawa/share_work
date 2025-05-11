import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

enum TimerStateEnum{
  stop,
  running,
  pose
}

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    @Default('') String taskName,
    @Default(0) int elapsedSeconds,
    @Default(false) bool isRunning,
    @Default(TimerStateEnum.stop) TimerStateEnum timerState
  }) = _TimerState;

  const TimerState._();

  String get formattedTime {
    final hours = elapsedSeconds ~/ 3600;
    final minutes = (elapsedSeconds % 3600) ~/ 60;
    final seconds = elapsedSeconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
