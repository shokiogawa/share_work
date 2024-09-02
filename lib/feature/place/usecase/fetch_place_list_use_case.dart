import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/place/entity/place.dart';
import 'package:stamp_rally_worship/feature/place/repository/place_repository.dart';

part 'fetch_place_list_use_case.g.dart';


@riverpod
Future<List<Place>> fetchPlaceListUseCase(FetchPlaceListUseCaseRef ref) async {
  final placeList = await ref.watch(placeRepositoryProvider).fetchList();
  return placeList;
}
