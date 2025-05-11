import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/core/usecase/auth/auth_use_case.dart';
import 'package:stamp_rally_worship/core/utility/logger.dart';
import 'package:stamp_rally_worship/feature/workspace_create/components/drop_down_form.dart';
import 'package:stamp_rally_worship/feature/workspace_create/models/create_work_space_parameter.dart';
import 'package:stamp_rally_worship/feature/workspace_create/models/work_space_bgm.dart';
import 'package:stamp_rally_worship/feature/workspace_create/providers/create_work_space_provider.dart';
import 'package:stamp_rally_worship/feature/workspace_create/providers/fetch_work_space_bgm_providers.dart';

import '../models/work_space_category.dart';
import '../providers/fetch_work_space_category_providers.dart';

class WorkspaceCreatePage extends HookConsumerWidget {
  const WorkspaceCreatePage({super.key});

  // 詳細ページをスタック
  static void push(BuildContext context) {
    const WorkspaceCreatePageRoute().push(context);
  }

  // 全てをページを置き換え
  static void go(BuildContext context) {
    const WorkspaceCreatePageRoute().go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    // カテゴリー選択
    final selectCategory = useState<WorkSpaceCategory?>(null);
    final selectBGM = useState<WorkSpaceBgm?>(null);

    final categoriesAsync = ref.watch(workSpaceCategoriesProvider);
    final bgmAsync = ref.watch(workSpaceBgmsProvider);
    // final selectedCategory = ref.watch(selectedCategoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('作業スペース作成'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.goNamed('workspace_list'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // カテゴリー選択
              DropDownFormField<WorkSpaceCategory>(
                asyncValue: categoriesAsync,
                value: selectCategory.value,
                onChanged: (data) {
                  if (data != null) {
                    selectCategory.value = data;
                  }
                },
                labelText: 'カテゴリー',
                validator: (value) {
                  if (value == null) {
                    return 'カテゴリーを選択してください';
                  }
                  return null;
                },
                displayColumnName: 'name',
              ),
              const SizedBox(height: 16),
              // BGM選択
              DropDownFormField<WorkSpaceBgm>(
                asyncValue: bgmAsync,
                value: selectBGM.value,
                onChanged: (data) {
                  if (data != null) {
                    selectBGM.value = data;
                  }
                },
                labelText: 'BGM',
                validator: (value) {
                  if (value == null) {
                    return 'BGMを選択してください';
                  }
                  return null;
                },
                displayColumnName: 'title',
              ),
              const SizedBox(height: 16),
              // スペース名
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'スペース名',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'スペース名を入力してください';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // 説明
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: '説明',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              // 作成ボタン
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await showLoadingDialogFuture(
                      context: context,
                      future: () async {
                        final currentUserId = (await ref
                                .read(authUseCaseProvider.notifier)
                                .build())
                            ?.id;
                        // パラメータ生成
                        final param = CreateWorkSpaceParameter(
                          name: nameController.text,
                          description: descriptionController.text,
                          categoryId: selectCategory.value!.id,
                          bgmId: selectBGM.value!.id,
                          createdBy: currentUserId!,
                          updatedBy: currentUserId,
                        );

                        await ref
                            .read(createWorkSpaceProvider)
                            .createWorkspace(param);
                      },
                      onSuccess: () async {
                        context.pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('成功しました。')),
                        );
                      },
                      onError: (error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('エラーが発生しました。')),
                        );
                      },
                    );
                  }
                },
                child: const Text('作成'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> showLoadingDialogFuture<T>({
  required BuildContext context,
  required Future<T> Function() future,
  Future<void> Function()? onSuccess,
  void Function(Object error)? onError,
}) async {
  showLoadingDialog(context);
  try {
    await future();
    if (context.mounted) {
      context.pop(); // ローディングダイアログを閉じる
    }
    if (onSuccess != null) {
      await onSuccess();
    }
  } on Exception catch (error) {
    if (context.mounted) {
      context.pop(); // ローディングダイアログを閉じる
    }
    if (onError != null) {
      onError(error);
    }
  }
}

void showLoadingDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return PopScope(
        child: Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                Text(
                  '処理中...',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
