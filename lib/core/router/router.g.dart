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
          path: 'place_list',
          name: 'place_list',
          factory: $PlaceListPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'shrine_list/:placeId',
              name: 'shrine_list',
              factory: $ShrineListPageRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail/:shrineId',
                  name: 'shrine_detail',
                  factory: $ShrineDetailPageRouteExtension._fromState,
                ),
              ],
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

extension $PlaceListPageRouteExtension on PlaceListPageRoute {
  static PlaceListPageRoute _fromState(GoRouterState state) =>
      const PlaceListPageRoute();

  String get location => GoRouteData.$location(
        '/place_list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShrineListPageRouteExtension on ShrineListPageRoute {
  static ShrineListPageRoute _fromState(GoRouterState state) =>
      ShrineListPageRoute(
        placeId: int.parse(state.pathParameters['placeId']!),
      );

  String get location => GoRouteData.$location(
        '/place_list/shrine_list/${Uri.encodeComponent(placeId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShrineDetailPageRouteExtension on ShrineDetailPageRoute {
  static ShrineDetailPageRoute _fromState(GoRouterState state) =>
      ShrineDetailPageRoute(
        placeId: int.parse(state.pathParameters['placeId']!),
        shrineId: int.parse(state.pathParameters['shrineId']!),
      );

  String get location => GoRouteData.$location(
        '/place_list/shrine_list/${Uri.encodeComponent(placeId.toString())}/detail/${Uri.encodeComponent(shrineId.toString())}',
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

typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
