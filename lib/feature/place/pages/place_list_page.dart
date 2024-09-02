import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/feature/place/pages/widget/place_card.dart';
import 'package:stamp_rally_worship/feature/place/usecase/fetch_place_list_use_case.dart';

class PlaceListPage extends ConsumerWidget {
  const PlaceListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(fetchPlaceListUseCaseProvider, (previous, next) {
      switch (next) {
        case AsyncError(:final error):
      }
    });
    final asyncValue = ref.watch(fetchPlaceListUseCaseProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('場所一覧'),
      ),
      body: switch (asyncValue) {
        AsyncData(:final value) => Padding(
            padding: const EdgeInsets.all(8),
            child: value.isNotEmpty
                ? ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PlaceCard(
                        place: value[index],
                      );
                    })
                : const Center(
                    child: Text('データが存在しません'),
                  ),
          ),
        // エラー表示
        AsyncError(:final error) => Center(
            child: Text(error.toString()),
          ),
        // ローディング
        _ => const Center(
            child: CircularProgressIndicator(),
          )
      },
    );
  }
}
