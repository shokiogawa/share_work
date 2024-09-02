import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/repository/supabase_client.dart';
import 'package:stamp_rally_worship/core/utility/logger.dart';
import 'package:stamp_rally_worship/feature/place/entity/place.dart';
import 'package:stamp_rally_worship/core/data/shrine_data.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../entity/shrine.dart';

part 'shrine_repository.g.dart';

@Riverpod(keepAlive: true)
ShrineRepository shrineRepository(ShrineRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return ShrineRepository(client);
}

class ShrineRepository {
  const ShrineRepository(this.client);

  final SupabaseClient client;

  Future<List<Shrine>> fetchListByPlace(int idPlace) async {
    try{
      final jsonMapList = await client.from('shrines').select()
          .eq('id_place', idPlace);
      final shrineList = jsonMapList.map(Shrine.fromJson).toList();
      return shrineList;
    } on Exception catch(e){
      print(e);
      throw Exception(e.toString());
    }
  }

  Future<Shrine> detail(int id) async {
    try{
      final jsonMapList = await client.from('shrines').select().eq('id', id)
          .limit(1);
      final place = jsonMapList.map(Shrine.fromJson).toList().first;
      return place;
    }on Exception catch(e){
      print(e);
      throw Exception(e.toString());
    }
  }

  // Future<void> create() async {
  //   await client.from('Places').insert({
  //     // jsonデータ
  //   });
  // }
}
