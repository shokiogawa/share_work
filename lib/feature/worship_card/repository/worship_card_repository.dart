import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/data/own_worship_card_data.dart';
import 'package:stamp_rally_worship/core/repository/supabase_client.dart';
import 'package:stamp_rally_worship/feature/place/entity/place.dart';
import 'package:stamp_rally_worship/feature/worship_card/entity/own_worship_card.dart';
import 'package:stamp_rally_worship/core/data/shrine_data.dart';
import 'package:stamp_rally_worship/feature/worship_card/entity/worship_card.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'worship_card_repository.g.dart';

@Riverpod(keepAlive: true)
WorshipCardRepository worshipCardRepository(WorshipCardRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return WorshipCardRepository(client);
}

class WorshipCardRepository {
  const WorshipCardRepository(this._client);

  final SupabaseClient _client;
  static const _ownWorshipCardsTable = 'own_worship_cards';
  static const _worshipCardTables = 'worship_cards';

  // 自分の取得している参拝カードを取得
  Future<List<WorshipCard>> fetchOwnList(int idShrine, int idUser) async {
    try {
      final jsonMapList = await _client
          .from('worship_cards')
          .select('*, '
              'own_worship_cards(*)')
          .eq('id_shrine', idShrine)
          .eq('own_worship_cards.id_user', idUser)
      ;
      print(jsonMapList);
      final worshipCard = jsonMapList.map(WorshipCard.fromJson).toList();
      return worshipCard;
    } on Exception catch (e) {
      print(e);
      throw Exception(e.toString());
    }
  }

  Future<WorshipCard> fetchRecent(int idShrine) async {
    final jsonMapList = await _client
        .from(_worshipCardTables)
        .select()
        .eq('id_shrine', idShrine)
        .eq('is_correct', 1)
        .limit(1);
    final worship = jsonMapList.map(WorshipCard.fromJson).toList().first;
    return worship;
  }

  // 参拝カード登録
  Future<void> create(OwnWorshipCardData body) async {
    await _client.from(_ownWorshipCardsTable).insert(body.toJson());
  }
}
