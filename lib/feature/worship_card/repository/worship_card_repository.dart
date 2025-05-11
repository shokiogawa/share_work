// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:simple_logger/simple_logger.dart';
// import 'package:stamp_rally_worship/core/data/own_worship_card_data.dart';
// import 'package:stamp_rally_worship/core/repository/supabase_client.dart';
// import 'package:stamp_rally_worship/core/utility/logger.dart';
// import 'package:stamp_rally_worship/feature/worship_card/entity/current_worship_card.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
//
// import '../entity/own_worship_card.dart';
//
// part 'worship_card_repository.g.dart';
//
// @Riverpod(keepAlive: true)
// WorshipCardRepository worshipCardRepository(WorshipCardRepositoryRef ref) {
//   final client = ref.read(supabaseClientProvider);
//   return WorshipCardRepository(client);
// }
//
// class WorshipCardRepository {
//   const WorshipCardRepository(this._client);
//
//   final SupabaseClient _client;
//   static const _ownWorshipCardsTable = 'own_worship_cards';
//   static const _worshipCardTables = 'worship_cards';
//
//   // 自分の取得している参拝カードを取得
//   Future<List<OwnWorshipCard>> fetchOwnList(int idShrine, int idUser) async {
//     try {
//       final jsonMapList = await _client
//           .from('v_own_worship_card')
//           .select()
//           .eq('id_user', idUser)
//           .eq('id_shirine', idShrine);
//
//       // print(jsonMapListTest);
//       logger.log(Level.INFO, jsonMapList);
//       final worshipCard = jsonMapList.map(OwnWorshipCard.fromJson).toList();
//       return worshipCard;
//     } on Exception catch (e) {
//       logger.log(Level.WARNING, e.toString());
//       throw Exception(e.toString());
//     }
//   }
//
//   Future<CurrentWorshipCard> fetchRecent(int idShrine) async {
//     try {
//       final jsonMapList = await _client
//           .from('v_worship_card_with_max_number')
//           .select()
//           .eq('id_shrine', idShrine)
//           .eq('is_current', 1)
//           .limit(1);
//       final worship =
//           jsonMapList.map(CurrentWorshipCard.fromJson).toList().first;
//       return worship;
//     } on Exception catch (e) {
//       logger.log(Level.WARNING, e.toString());
//       throw Exception(e.toString());
//     }
//   }
//
//   // 参拝カード登録
//   Future<void> create(OwnWorshipCardData body) async {
//     await _client.from(_ownWorshipCardsTable).insert(body.toJson());
//   }
// }
