// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $startUpPageRoute,
    ];

RouteBase get $startUpPageRoute => GoRouteData.$route(
      path: '/',
      factory: $StartUpPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'main',
          name: 'main',
          factory: $MainScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'login_sign_in',
          name: 'login_sign_in',
          factory: $LoginSignInPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'timer',
          name: 'timer',
          factory: $TimerPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'workspaces',
          name: 'workspace_list',
          factory: $WorkspaceListPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'workspaces/create',
              name: 'workspace_create',
              factory: $WorkspaceCreatePageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'workspaces/:id',
              name: 'workspace',
              factory: $WorkspacePageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $StartUpPageRouteExtension on StartUpPageRoute {
  static StartUpPageRoute _fromState(GoRouterState state) =>
      const StartUpPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MainScreenRouteExtension on MainScreenRoute {
  static MainScreenRoute _fromState(GoRouterState state) =>
      const MainScreenRoute();

  String get location => GoRouteData.$location(
        '/main',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginSignInPageRouteExtension on LoginSignInPageRoute {
  static LoginSignInPageRoute _fromState(GoRouterState state) =>
      const LoginSignInPageRoute();

  String get location => GoRouteData.$location(
        '/login_sign_in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TimerPageRouteExtension on TimerPageRoute {
  static TimerPageRoute _fromState(GoRouterState state) =>
      const TimerPageRoute();

  String get location => GoRouteData.$location(
        '/timer',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WorkspaceListPageRouteExtension on WorkspaceListPageRoute {
  static WorkspaceListPageRoute _fromState(GoRouterState state) =>
      const WorkspaceListPageRoute();

  String get location => GoRouteData.$location(
        '/workspaces',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WorkspaceCreatePageRouteExtension on WorkspaceCreatePageRoute {
  static WorkspaceCreatePageRoute _fromState(GoRouterState state) =>
      const WorkspaceCreatePageRoute();

  String get location => GoRouteData.$location(
        '/workspaces/workspaces/create',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WorkspacePageRouteExtension on WorkspacePageRoute {
  static WorkspacePageRoute _fromState(GoRouterState state) =>
      WorkspacePageRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/workspaces/workspaces/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'503ce08de99812e0b6f7f9e555e1fb8193cdeca0';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
