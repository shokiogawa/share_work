import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/data/shrine_data.dart';
import 'package:stamp_rally_worship/feature/shrine/repository/shrine_repository.dart';
import 'package:stamp_rally_worship/feature/worship_card/repository/worship_card_repository.dart';

import '../entity/shrine.dart';

part 'fetch_shrine_detail.g.dart';

@riverpod
Future<Shrine> fetchShrineDetailUseCase(
    FetchShrineDetailUseCaseRef ref, int idShrine) async {
  final shrine = await ref.watch(shrineRepositoryProvider).detail(idShrine);
  final test = await ref.watch(worshipCardRepositoryProvider).fetchOwnList(idShrine, 1);
  print(test);
  return shrine;
}
