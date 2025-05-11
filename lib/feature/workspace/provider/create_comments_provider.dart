import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/usecase/auth/auth_use_case.dart';
import 'package:stamp_rally_worship/feature/workspace/model/create_comment_param.dart';
import 'package:stamp_rally_worship/feature/workspace/repository/comment_repository.dart';

part 'create_comments_provider.g.dart';

@riverpod
CreateComments createComments(Ref ref) {
  return CreateComments(ref);
}

class CreateComments {
  CreateComments(this.ref);
  final Ref ref;

  CommentRepository get commentRepository =>
      ref.read(commentRepositoryProvider);

  Future<void> createComment(String message, int workSpaceId) async {
    final userId = await ref.read(authUseCaseProvider.notifier).getUserId();
    final comment = CreateCommentParam(
      content: message,
      userId: userId!,
      workSpaceId: workSpaceId,
    );
    await commentRepository.createComment(comment);
  }
}
