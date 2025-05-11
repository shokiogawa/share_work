import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stamp_rally_worship/feature/login/pages/login_signin_page.dart';
import 'package:stamp_rally_worship/feature/main.dart';
import 'package:stamp_rally_worship/feature/startup/pages/start_up_page.dart';
import 'package:stamp_rally_worship/feature/workspace_list/pages/workspace_list_page.dart';
import '../../feature/timer/timer_screen.dart';
import '../../feature/workspace/pages/workspace_page.dart';
import '../../feature/workspace_create/pages/workspace_create_page.dart';

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
    // ログイン & サインイン
    TypedGoRoute<MainScreenRoute>(
      path: 'main',
      name: 'main',
    ),
    // ログイン & サインイン
    TypedGoRoute<LoginSignInPageRoute>(
      path: 'login_sign_in',
      name: 'login_sign_in',
    ),
    // タイマー
    TypedGoRoute<TimerPageRoute>(
      path: 'timer',
      name: 'timer',
    ),

    // 作業スペース一覧
    TypedGoRoute<WorkspaceListPageRoute>(
        path: 'workspaces',
        name: 'workspace_list',
        routes: [
          // 作業スペース作成
          TypedGoRoute<WorkspaceCreatePageRoute>(
            path: 'workspaces/create',
            name: 'workspace_create',
          ),

          // 作業スペース詳細
          TypedGoRoute<WorkspacePageRoute>(
            path: 'workspaces/:id',
            name: 'workspace',
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

class MainScreenRoute extends GoRouteData{
  const MainScreenRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MainScreen();
}

// ログイン & サインイン
class LoginSignInPageRoute extends GoRouteData {
  const LoginSignInPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginSignInPage();
}

// 作業スペース一覧
class WorkspaceListPageRoute extends GoRouteData {
  const WorkspaceListPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WorkspaceListPage();
}

// 作業スペース作成
class WorkspaceCreatePageRoute extends GoRouteData {
  const WorkspaceCreatePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WorkspaceCreatePage();
}

// 作業スペース詳細
class WorkspacePageRoute extends GoRouteData {
  const WorkspacePageRoute({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      WorkspacePage(workspaceId: id);
}

class TimerPageRoute extends GoRouteData {
  const TimerPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TimerScreen();
}
