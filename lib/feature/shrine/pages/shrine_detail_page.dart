import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/core/router/router.dart';
import 'package:stamp_rally_worship/feature/shrine/usecase/fetch_shrine_detail.dart';
import 'package:stamp_rally_worship/gen/assets.gen.dart';

import '../../../core/component/button_style.dart';

class ShrineDetailPage extends HookConsumerWidget {
  const ShrineDetailPage({super.key, required this.shrineId});

  final int shrineId;

  // 詳細ページをスタック
  static void push(BuildContext context, int placeId, int shrineId) {
    ShrineDetailPageRoute(placeId: placeId, shrineId: shrineId).go(context);
  }

  // 全てをページを置き換え
  static void go(BuildContext context, int placeId, int shrineId) {
    ShrineDetailPageRoute(placeId: placeId, shrineId: shrineId).go(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(fetchShrineDetailUseCaseProvider(shrineId));
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ElevatedButton(
            style: ButtonStyles.normal(),
            onPressed: () {},
            child: const Text(
              '参拝カードを取得',
              style: TextStyle(color: Colors.white),
            )),
      ),
      // 正常処理
      body: switch (asyncValue) {
        AsyncData(:final value) => NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.black,
                  expandedHeight: 200,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      value.name ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    background:
                        Assets.images.oshiyama.image(fit: BoxFit.contain),
                    // background: Assets.Ima,
                  ),
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 0.65,
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return const _WorshipCard();
                },
              ),
            ),
          ),
        // エラー
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

class _WorshipCard extends StatelessWidget {
  const _WorshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text('参拝カード'),
    );
  }
}
