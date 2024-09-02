import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/data/shrine_data.dart';
import 'package:stamp_rally_worship/feature/shrine/repository/shrine_repository.dart';

import '../entity/shrine.dart';

part 'fetch_shrine_list_by_place.g.dart';


@riverpod
Future<List<Shrine>> fetchShrineListByPlaceUseCase
    (FetchShrineListByPlaceUseCaseRef ref, int idPlace) async {

  final shrineList = await ref.watch(shrineRepositoryProvider)
      .fetchListByPlace(idPlace);
  return shrineList;
}