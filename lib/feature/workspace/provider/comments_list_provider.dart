import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/workspace/repository/comment_repository.dart';

import '../model/comment.dart';

part 'comments_list_provider.g.dart';

@riverpod
Stream<List<Comment>> fetchCommentsStream(Ref ref, int workSpaceId) {
  return ref.read(commentRepositoryProvider).fetchCommentStream(workSpaceId);
}
