import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_param.freezed.dart';

part 'create_comment_param.g.dart';

@freezed
class CreateCommentParam with _$CreateCommentParam {
  const factory CreateCommentParam({
    required String content,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'work_space_id') required int workSpaceId,
  }) = _CreateCommentParam;

  factory CreateCommentParam.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentParamFromJson(json);
}
