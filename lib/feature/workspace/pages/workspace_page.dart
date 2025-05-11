import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/feature/workspace/provider/comments_list_provider.dart';
import 'package:stamp_rally_worship/feature/workspace/provider/create_comments_provider.dart';
import '../model/work_space_detail.dart';
import '../provider/fetch_work_space_detail_provider.dart';
import '../services/bgm_player_service.dart';

class WorkspacePage extends HookConsumerWidget {
  const WorkspacePage({
    super.key,
    required this.workspaceId,
  });

  final int workspaceId;

  // 詳細ページをスタック
  static void push(BuildContext context, int workspaceId) {
    WorkspacePageRoute(id: workspaceId).push(context);
  }

  // 全てをページを置き換え
  static void go(BuildContext context, int workspaceId) {
    WorkspacePageRoute(id: workspaceId).go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(fetchWorkSpaceDetailProvider(workspaceId));
    return asyncValue.when(
      data: (workspace) {
        return WorkSpaceBody(workSpace: workspace);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        return Center(child: Text('エラーが発生しました: $error'));
      },
    );
  }
}

class WorkSpaceBody extends HookConsumerWidget {
  const WorkSpaceBody({super.key, required this.workSpace});

  final WorkSpaceDetail workSpace;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = useTextEditingController();
    final bgmPlayer = ref.watch(bgmPlayerServiceProvider);
    final isPlaying = useState(false);
    final commentsStream = ref.watch(fetchCommentsStreamProvider(workSpace.id));

    useEffect(() {
      Future.microtask(() async {
        final audioSource =
            AudioSource.uri(Uri.parse(workSpace.musicUrl ?? ''));
        await bgmPlayer.initialize(audioSource);
        final subscription = bgmPlayer.playerStateStream.listen((state) {
          isPlaying.value = state.playing;
        });
        return () {
          subscription.cancel();
          bgmPlayer.dispose();
        };
      });
    }, [bgmPlayer]);

    return Scaffold(
      appBar: AppBar(
        title: Text(workSpace.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(isPlaying.value ? Icons.pause : Icons.play_arrow),
            onPressed: () async {
              if (isPlaying.value) {
                await bgmPlayer.pause();
              } else {
                await bgmPlayer.play();
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.skip_next),
            onPressed: bgmPlayer.next,
          ),
        ],
      ),
      body: Column(
        children: [
          // BGMプレーヤーのUI
          StreamBuilder<Duration?>(
            stream: bgmPlayer.positionStream,
            builder: (context, snapshot) {
              final position = snapshot.data ?? Duration.zero;
              return StreamBuilder<Duration?>(
                stream: bgmPlayer.durationStream,
                builder: (context, snapshot) {
                  final duration = snapshot.data ?? Duration.zero;
                  return Column(
                    children: [
                      Slider(
                        value: position.inSeconds.toDouble(),
                        max: duration.inSeconds.toDouble(),
                        onChanged: (value) {
                          bgmPlayer.seek(Duration(seconds: value.toInt()));
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_formatDuration(position)),
                            Text(_formatDuration(duration)),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          // チャットUI
          Expanded(
            child: commentsStream.when(
              data: (comments) => ListView.builder(
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  final comment = comments[index];
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              comment.content,
                              style: const TextStyle(fontSize: 15),
                            ),
                            const Text(
                              'ユーザー名',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) {
                return Center(child: Text('エラーが発生しました: $error'));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: 'メッセージを入力',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () async {
                    await ref.read(createCommentsProvider).createComment(
                          messageController.text,
                          workSpace.id,
                        );
                    messageController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}
