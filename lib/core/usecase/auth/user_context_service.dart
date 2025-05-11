import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/usecase/auth/model/user_info.dart';
import 'package:stamp_rally_worship/core/usecase/auth/repository/auth_repository.dart';

part 'user_context_service.g.dart';

@riverpod
Future<UserInfo?> userContext(UserContextRef ref) async {
  final user = await ref.read(authRepositoryProvider).getCurrentUser();
  return user;
}
