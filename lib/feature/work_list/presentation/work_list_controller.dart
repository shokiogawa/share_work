import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/feature/work_list/domain/work_state.dart';
import 'package:stamp_rally_worship/feature/work_list/domain/comment.dart';
import 'package:uuid/uuid.dart';

final workListControllerProvider =
    StateNotifierProvider<WorkListController, List<WorkState>>((ref) {
  return WorkListController();
});

final commentsProvider = StateNotifierProvider.family<CommentsController, List<Comment>, String>((ref, workId) {
  return CommentsController(workId);
});

class CommentsController extends StateNotifier<List<Comment>> {
  final String workId;
  final _uuid = const Uuid();

  CommentsController(this.workId) : super([]) {
    _addDummyComments();
  }

  void _addDummyComments() {
    state = [
      Comment(
        id: _uuid.v4(),
        userId: '1',
        userName: '山田太郎',
        content: '頑張ってください！',
        createdAt: DateTime.now().subtract(const Duration(minutes: 30)),
      ),
      Comment(
        id: _uuid.v4(),
        userId: '2',
        userName: '鈴木花子',
        content: '応援しています！',
        createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
      ),
    ];
  }

  void addComment(String userId, String userName, String content) {
    final comment = Comment(
      id: _uuid.v4(),
      userId: userId,
      userName: userName,
      content: content,
      createdAt: DateTime.now(),
    );
    state = [...state, comment];
  }

  void removeComment(String commentId) {
    state = state.where((comment) => comment.id != commentId).toList();
  }
}

class WorkListController extends StateNotifier<List<WorkState>> {
  WorkListController() : super([]) {
    // 仮のデータを追加
    _addDummyData();
  }

  void _addDummyData() {
    final now = DateTime.now();
    state = [
      WorkState(
        userId: '1',
        userName: '山田太郎',
        taskName: 'フロントエンド開発',
        elapsedSeconds: 3600,
        isRunning: true,
        startTime: now.subtract(const Duration(hours: 1)),
        status: WorkStatus.working,
      ),
      WorkState(
        userId: '2',
        userName: '鈴木花子',
        taskName: 'バックエンド開発',
        elapsedSeconds: 7200,
        isRunning: true,
        startTime: now.subtract(const Duration(hours: 2)),
        status: WorkStatus.resting,
      ),
      WorkState(
        userId: '3',
        userName: '佐藤次郎',
        taskName: 'デザイン作成',
        elapsedSeconds: 1800,
        isRunning: false,
        startTime: now.subtract(const Duration(hours: 3)),
        status: WorkStatus.finished,
      ),
    ];
  }

  // 作業状態の更新
  void updateWorkState(WorkState workState) {
    state = state.map((work) {
      if (work.userId == workState.userId) {
        return workState;
      }
      return work;
    }).toList();
  }

  // 作業の追加
  void addWork(WorkState workState) {
    state = [...state, workState];
  }

  // 作業の削除
  void removeWork(String userId) {
    state = state.where((work) => work.userId != userId).toList();
  }
} 