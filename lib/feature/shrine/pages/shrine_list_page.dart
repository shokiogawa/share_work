import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/core/data/shrine_data.dart';

import '../entity/shrine.dart';
import '../usecase/fetch_shrine_list_by_place.dart';

class ShrineListPage extends HookConsumerWidget {
  const ShrineListPage({super.key, required this.placeId});

  final int placeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue =
        ref.watch(fetchShrineListByPlaceUseCaseProvider(placeId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('神社一覧'),
      ),
      body: switch (asyncValue) {
        // データ
        AsyncData(:final value) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 0.65,
              ),
              itemCount: value.length,
              itemBuilder: (BuildContext context, int index) {
                return _StampCard(
                  shrine: value[index],
                );
              },
            ),
          ),
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

class _StampCard extends StatelessWidget {
  const _StampCard({super.key, required this.shrine});

  final Shrine shrine;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ShrineDetailPageRoute(placeId: shrine.idPlace, shrineId: shrine.id)
            .push(context);
      },
      child: Card(
        child: Column(
          children: [
            const Expanded(flex: 2, child: Text('画像エリア')),
            Expanded(child: Text(shrine.name ?? '')),
          ],
        ),
      ),
    );
  }
}
