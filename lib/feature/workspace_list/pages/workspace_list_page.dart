import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/feature/workspace/pages/workspace_page.dart';
import 'package:stamp_rally_worship/feature/workspace_create/pages/workspace_create_page.dart';
import 'package:stamp_rally_worship/feature/workspace_list/provider/fetch_work_space_list.dart';

class WorkspaceListPage extends HookConsumerWidget {
  const WorkspaceListPage({super.key});

  // 詳細ページをスタック
  static void push(BuildContext context) {
    const WorkspaceListPageRoute().push(context);
  }

  // 全てをページを置き換え
  static void go(BuildContext context) {
    const WorkspaceListPageRoute().go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(fetchWorkSpaceListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('作業スペース一覧'),
      ),
      body: async.when(
        data: (workspaces) => ListView.builder(
          itemCount: workspaces.length,
          itemBuilder: (context, index) {
            final workspace = workspaces[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: const Icon(Icons.work, color: Colors.blueAccent),
                title: Text(workspace.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(workspace.description!),
                    const SizedBox(height: 4),
                    const Text('参加者数: 1人'),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  WorkspacePage.push(context, workspace.id);
                },
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('エラーが発生しました: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => WorkspaceCreatePage.push(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
