import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required int id,
    required String name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Place;

  const Place._();

  // データをjson化
  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  // static String collectionPath(String userId) =>
  //     'sample/v1/developers/$userId/memos';
  // static CollectionReference<SnapType> colRef(String userId) =>
  //     Document.colRef(collectionPath(userId));
  //
  // static String docPath(String userId, String id) =>
  //     '${collectionPath(userId)}/$id';
  // static DocumentReference<SnapType> docRef(String userId, String id) =>
  //     Document.docRefWithDocPath(docPath(userId, id));
  //
  // Map<String, dynamic> get toCreateDoc => <String, dynamic>{
  //   'memoId': memoId,
  //   'text': text,
  //   'createdAt': FieldValue.serverTimestamp(),
  //   'updatedAt': FieldValue.serverTimestamp(),
  // };
  //
  // Map<String, dynamic> get toUpdateDoc => <String, dynamic>{
  //   'text': text,
  //   'updatedAt': FieldValue.serverTimestamp(),
  // };
  //
  // String get dateLabel {
  //   final date = createdAt;
  //   if (date == null) {
  //     return '-';
  //   }
  //   return date.format(pattern: 'yyyy.M.d HH:mm');
  // }
}
