import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/place/pages/place_list_page.dart';
import 'package:stamp_rally_worship/feature/shrine/pages/shrine_detail_page.dart';
import 'package:stamp_rally_worship/feature/shrine/pages/shrine_list_page.dart';
import 'package:stamp_rally_worship/feature/startup/pages/start_up_page.dart';

part 'router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: [...$appRoutes],
  );
}

@TypedGoRoute<StartUpPageRoute>(
  path: '/',
  // name: StartUpPage.pageName,
  routes: [
    // 場所一覧
    TypedGoRoute<PlaceListPageRoute>(
        path: 'place_list',
        name: 'place_list',
        routes: [
          // 神社一覧
          TypedGoRoute<ShrineListPageRoute>(
            path: 'shrine_list/:placeId',
            name: 'shrine_list',
            routes: [
              // 神社詳細画面
              TypedGoRoute<ShrineDetailPageRoute>(
                path: 'detail/:shrineId',
                name: 'shrine_detail',
              ),
            ],
          ),
        ]),
  ],
)
// https://techblog.glpgs.com/entry/2023/05/11/150306

// スタートアップページ
class StartUpPageRoute extends GoRouteData {
  const StartUpPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StartUpPage();
}

// 場所一覧
class PlaceListPageRoute extends GoRouteData {
  const PlaceListPageRoute();

  static String get name => 'place_list';

  static String get path => 'place_list';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PlaceListPage();
}

// 神社一覧ページ
class ShrineListPageRoute extends GoRouteData {
  const ShrineListPageRoute({required this.placeId});

  final int placeId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ShrineListPage(placeId: placeId);
}

// 神社詳細ページ
class ShrineDetailPageRoute extends GoRouteData {
  ShrineDetailPageRoute({required this.placeId,required this.shrineId});
  final int placeId;
  final int shrineId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ShrineDetailPage(shrineId: shrineId);
}
