import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/supabase_client.dart';
import 'package:stamp_rally_worship/core/utility/logger.dart';
import 'package:stamp_rally_worship/feature/workspace/model/comment.dart';
import 'package:stamp_rally_worship/feature/workspace/model/create_comment_param.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'comment_repository.g.dart';

@riverpod
CommentRepository commentRepository(Ref ref) {
  final client = ref.watch(supabaseClientProvider);
  return CommentRepository(client);
}

class CommentRepository {
  const CommentRepository(this._client);

  final SupabaseClient _client;
  Stream<List<Comment>> fetchCommentStream(int workSpaceId) {
    try {
      return _client
          .from('comments')
          .stream(primaryKey: ['id'])
          .eq('work_space_id', workSpaceId) // workerIdでフィルタリング
          .order('created_at') // 送信日時が新しいものが先に来るようにソート
          .map((maps) => maps.map(Comment.fromJson).toList());
    } on Exception catch (e) {
      logger.e(e);
      // エラーが発生した場合は空のストリームを返す
      return Stream.error('Failed to fetch comments: $e');
    }
  }

  Future<void> createComment(CreateCommentParam comment) async {
    await _client.from('comments').insert(comment.toJson());
  }
}
