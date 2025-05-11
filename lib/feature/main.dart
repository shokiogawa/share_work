import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/feature/timer/timer_screen.dart';
import 'package:stamp_rally_worship/feature/work_list/presentation/work_list_screen.dart';

import '../core/router/router.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  // 詳細ページをスタック
  static void push(BuildContext context) {
    const MainScreenRoute().push(context);
  }

  // 全てをページを置き換え
  static void go(BuildContext context) {
    const MainScreenRoute().go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);
    final pageList = [const TimerScreen(), const WorkListScreen(), Container()];
    return Scaffold(
      appBar: AppBar(),
      body: pageList[currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'タイマー',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '作業一覧',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        onTap: (index) {
          currentIndex.value = index;
        },
      ),
    );
  }
}
