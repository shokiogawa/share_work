// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_work_space_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchWorkSpaceDetailHash() =>
    r'5f6477a79d1753744baef2d7d30a808c11d9aa5d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchWorkSpaceDetail].
@ProviderFor(fetchWorkSpaceDetail)
const fetchWorkSpaceDetailProvider = FetchWorkSpaceDetailFamily();

/// See also [fetchWorkSpaceDetail].
class FetchWorkSpaceDetailFamily extends Family<AsyncValue<WorkSpaceDetail>> {
  /// See also [fetchWorkSpaceDetail].
  const FetchWorkSpaceDetailFamily();

  /// See also [fetchWorkSpaceDetail].
  FetchWorkSpaceDetailProvider call(
    int workSpaceId,
  ) {
    return FetchWorkSpaceDetailProvider(
      workSpaceId,
    );
  }

  @override
  FetchWorkSpaceDetailProvider getProviderOverride(
    covariant FetchWorkSpaceDetailProvider provider,
  ) {
    return call(
      provider.workSpaceId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchWorkSpaceDetailProvider';
}

/// See also [fetchWorkSpaceDetail].
class FetchWorkSpaceDetailProvider
    extends AutoDisposeFutureProvider<WorkSpaceDetail> {
  /// See also [fetchWorkSpaceDetail].
  FetchWorkSpaceDetailProvider(
    int workSpaceId,
  ) : this._internal(
          (ref) => fetchWorkSpaceDetail(
            ref as FetchWorkSpaceDetailRef,
            workSpaceId,
          ),
          from: fetchWorkSpaceDetailProvider,
          name: r'fetchWorkSpaceDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchWorkSpaceDetailHash,
          dependencies: FetchWorkSpaceDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchWorkSpaceDetailFamily._allTransitiveDependencies,
          workSpaceId: workSpaceId,
        );

  FetchWorkSpaceDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workSpaceId,
  }) : super.internal();

  final int workSpaceId;

  @override
  Override overrideWith(
    FutureOr<WorkSpaceDetail> Function(FetchWorkSpaceDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchWorkSpaceDetailProvider._internal(
        (ref) => create(ref as FetchWorkSpaceDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workSpaceId: workSpaceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WorkSpaceDetail> createElement() {
    return _FetchWorkSpaceDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchWorkSpaceDetailProvider &&
        other.workSpaceId == workSpaceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workSpaceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchWorkSpaceDetailRef on AutoDisposeFutureProviderRef<WorkSpaceDetail> {
  /// The parameter `workSpaceId` of this provider.
  int get workSpaceId;
}

class _FetchWorkSpaceDetailProviderElement
    extends AutoDisposeFutureProviderElement<WorkSpaceDetail>
    with FetchWorkSpaceDetailRef {
  _FetchWorkSpaceDetailProviderElement(super.provider);

  @override
  int get workSpaceId => (origin as FetchWorkSpaceDetailProvider).workSpaceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
