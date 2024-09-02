import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/repository/supabase_client.dart';
import 'package:stamp_rally_worship/feature/place/entity/place.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'place_repository.g.dart';

@Riverpod(keepAlive: true)
PlaceRepository placeRepository(PlaceRepositoryRef ref) {
  final client = ref.read(supabaseClientProvider);
  return PlaceRepository(client);
}

class PlaceRepository {
  const PlaceRepository(this.client);

  final SupabaseClient client;

  Future<List<Place>> fetchList() async {
    final jsonMapList = await client.from('places').select();
    final placeList = jsonMapList.map(Place.fromJson).toList();
    return placeList;
  }

  Future<Place> detail(String id) async {
    final jsonMapList = await client.from('places').select().eq('id', id);
    final place = jsonMapList.map(Place.fromJson).toList().first;
    return place;
  }

  Future<void> create() async {
    await client.from('Places').insert({
      // jsonデータ
    });
  }
}
