import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_state.freezed.dart';
enum WorkStatus {
  working,  // 作業中
  resting,  // 休憩中
  finished, // 終了
}



@freezed
class WorkState with _$WorkState {
  const factory WorkState({
    required String userId,
    required String userName,
    required String taskName,
    required int elapsedSeconds,
    required bool isRunning,
    required DateTime startTime,
    @Default(WorkStatus.working) WorkStatus status,
  }) = _WorkState;
} 