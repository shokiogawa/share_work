import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/feature/timer/domain/timer_state.dart';
import 'package:stamp_rally_worship/feature/timer/presentation/timer_controller.dart';
import '../../core/router/router.dart';

class TimerScreen extends HookConsumerWidget {
  const TimerScreen({super.key});

  // 詳細ページをスタック
  static void push(BuildContext context) {
    const TimerPageRoute().push(context);
  }

  // 全てをページを置き換え
  static void go(BuildContext context) {
    const TimerPageRoute().go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerControllerProvider);
    final controller = ref.read(timerControllerProvider.notifier);

    // テキストコントローラーを管理
    final taskNameController = useTextEditingController(
      text: timerState.taskName,
    );

    // テキストコントローラーの変更を監視
    useEffect(() {
      void listener() {
        controller.updateTaskName(taskNameController.text);
      }

      taskNameController.addListener(listener);
      return () => taskNameController.removeListener(listener);
    }, [taskNameController]);

    // 1時間（3600秒）に対する進捗を計算
    final progress = timerState.elapsedSeconds / 3600;
    final elapsedHours = (timerState.elapsedSeconds / 3600).floor();
    final elapsedMinutes = ((timerState.elapsedSeconds % 3600) / 60).floor();
    final elapsedSeconds = timerState.elapsedSeconds % 60;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (timerState.timerState != TimerStateEnum.stop)
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Text(
                  timerState.taskName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            const SizedBox(height: 32),
            SizedBox(
              height: 300,
              width: 300,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // 外側の装飾円
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue.withOpacity(0.1),
                          Colors.blue.withOpacity(0.05),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                  ),
                  // 背景の円
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  // プログレスバー
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 15,
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        timerState.isRunning
                            ? (elapsedHours.isEven ? Colors.green : Colors.blue)
                            : Colors.grey[400]!,
                      ),
                    ),
                  ),
                  // 経過時間の表示
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '経過時間',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${elapsedHours.toString().padLeft(2, '0')}:${elapsedMinutes.toString().padLeft(2, '0')}:${elapsedSeconds.toString().padLeft(2, '0')}',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: timerState.isRunning
                                ? Colors.blue
                                : Colors.grey[600],
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            if (timerState.timerState == TimerStateEnum.stop)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: taskNameController,
                  decoration: InputDecoration(
                    hintText: '作業内容を入力してください',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.edit_note,
                      color: Colors.blue[400],
                    ),
                    suffixIcon: taskNameController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              taskNameController.clear();
                              controller.updateTaskName('');
                            },
                          )
                        : null,
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!timerState.isRunning)
                  ElevatedButton(
                    onPressed: taskNameController.text.isEmpty
                        ? null
                        : controller.startTimer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      elevation: 2,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      disabledBackgroundColor: Colors.grey[200],
                      disabledForegroundColor: Colors.grey[400],
                    ),
                    child: const Text(
                      '開始',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: timerState.timerState == TimerStateEnum.pose 
                            ? controller.resumeTimer 
                            : controller.pauseTimer,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.orange,
                          elevation: 2,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          side: const BorderSide(
                            color: Colors.orange,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          timerState.timerState == TimerStateEnum.pose ? '再開' : 'ポーズ',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () async {
                          final result = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('作業を終了しますか？'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('作業内容: ${timerState.taskName}'),
                                  const SizedBox(height: 8),
                                  Text(
                                    '経過時間: ${elapsedHours.toString().padLeft(2, '0')}:${elapsedMinutes.toString().padLeft(2, '0')}:${elapsedSeconds.toString().padLeft(2, '0')}',
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, false),
                                  child: const Text('キャンセル'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.red,
                                  ),
                                  child: const Text('終了する'),
                                ),
                              ],
                            ),
                          );

                          if (result == true) {
                            controller.stopTimer();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('作業を終了しました'),
                                backgroundColor: Colors.green,
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,
                          elevation: 2,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          side: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: const Text(
                          '終了',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
