import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/feature/startup/usecases/start_up_use_case.dart';

class StartUpPage extends HookConsumerWidget {
  const StartUpPage({super.key});

  static String get pageName => 'start_up';

  static String get pagePath => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      // mainを抜けた時点で実行されるのがmicrotask、useEffect内でasync/awaitを使用したい時などに使用する。
      Future.microtask(() async {
        final state = await ref.watch(startUpUseCaseProvider.future);
        if (state == StartUpResultType.forceVersionUp) {
          // ダイアログ表示
          return;
        }
        // 場所一覧ページに遷移する。
        if (context.mounted) {
          const PlaceListPageRoute().pushReplacement(context);
        }
        return null;
        // 非同期処理を行う。
      });
    }, const []);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          const Align(
              // alignment: Alignment.center,
              child: Text('最新のバージョンがリリースされています。')),
          TextButton(onPressed: () {}, child: const Text('アプリストアへ遷移する。'))
        ],
      ),
    );
  }
}
