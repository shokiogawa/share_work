// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:stamp_rally_worship/core/data/own_worship_card_data.dart';
// import 'package:stamp_rally_worship/feature/worship_card/entity/own_worship_card.dart';
// import 'package:stamp_rally_worship/feature/worship_card/repository/worship_card_repository.dart';
//
// import '../entity/current_worship_card.dart';
//
// part 'command_worship_use_case.g.dart';
//
// @riverpod
// class CommandWorshipUseCase extends _$CommandWorshipUseCase {
//   // use_case内で共通で使用するrepository
//   WorshipCardRepository get _worshipRepository =>
//       ref.read(worshipCardRepositoryProvider);
//
//   @override
//   Future<List<OwnWorshipCard>> build(int shrineId) async {
//     return _future();
//   }
//
//   Future<List<OwnWorshipCard>> _future() async {
//     return _worshipRepository.fetchOwnList(shrineId, 1);
//   }
//
//   Future<void> create(int idShrine) async {
//     // state = const AsyncLoading<List<WorshipCard>>().copyWithPrevious(state);
//
//     final worshipCard = await _worshipRepository.fetchRecent(idShrine);
//     final createParameter = OwnWorshipCardData.create(worshipCard.id, 1, '0001');
//     await _worshipRepository.create(createParameter);
//     final newData = await _future();
//     state = AsyncData(newData);
//
//     // await AsyncValue.guard(() async {
//     //   await _worshipRepository.create(createParameter);
//     //   return _future();
//     // });
//   }
// }
