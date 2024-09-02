import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/data/own_worship_card_data.dart';
import 'package:stamp_rally_worship/feature/worship_card/repository/worship_card_repository.dart';

import '../entity/worship_card.dart';

part 'command_worship_use_case.g.dart';

@riverpod
class CommandWorshipUseCase extends _$CommandWorshipUseCase {
  // use_case内で共通で使用するrepository
  WorshipCardRepository get _worshipRepository =>
      ref.read(worshipCardRepositoryProvider);

  @override
  Future<List<WorshipCard>> build(int shrineId) async {
    return _future();
  }

  Future<List<WorshipCard>> _future() async {
    return _worshipRepository.fetchOwnList(shrineId, 1);
  }

  Future<void> create(int idShrine) async {
    final worshipCard = await _worshipRepository.fetchRecent(idShrine);
    final createParameter = OwnWorshipCardData.create(1, 1, '0001');
    await _worshipRepository.create(createParameter);
    ref.invalidateSelf();

    await AsyncValue.guard(() async {
      await _worshipRepository.create(createParameter);
      return _future();
    });
  }
}
