// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCommentsStreamHash() =>
    r'10a9aae6e0bf1bb46fdb5f4e95b12058d61b1563';

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

/// See also [fetchCommentsStream].
@ProviderFor(fetchCommentsStream)
const fetchCommentsStreamProvider = FetchCommentsStreamFamily();

/// See also [fetchCommentsStream].
class FetchCommentsStreamFamily extends Family<AsyncValue<List<Comment>>> {
  /// See also [fetchCommentsStream].
  const FetchCommentsStreamFamily();

  /// See also [fetchCommentsStream].
  FetchCommentsStreamProvider call(
    int workSpaceId,
  ) {
    return FetchCommentsStreamProvider(
      workSpaceId,
    );
  }

  @override
  FetchCommentsStreamProvider getProviderOverride(
    covariant FetchCommentsStreamProvider provider,
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
  String? get name => r'fetchCommentsStreamProvider';
}

/// See also [fetchCommentsStream].
class FetchCommentsStreamProvider
    extends AutoDisposeStreamProvider<List<Comment>> {
  /// See also [fetchCommentsStream].
  FetchCommentsStreamProvider(
    int workSpaceId,
  ) : this._internal(
          (ref) => fetchCommentsStream(
            ref as FetchCommentsStreamRef,
            workSpaceId,
          ),
          from: fetchCommentsStreamProvider,
          name: r'fetchCommentsStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchCommentsStreamHash,
          dependencies: FetchCommentsStreamFamily._dependencies,
          allTransitiveDependencies:
              FetchCommentsStreamFamily._allTransitiveDependencies,
          workSpaceId: workSpaceId,
        );

  FetchCommentsStreamProvider._internal(
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
    Stream<List<Comment>> Function(FetchCommentsStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCommentsStreamProvider._internal(
        (ref) => create(ref as FetchCommentsStreamRef),
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
  AutoDisposeStreamProviderElement<List<Comment>> createElement() {
    return _FetchCommentsStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCommentsStreamProvider &&
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
mixin FetchCommentsStreamRef on AutoDisposeStreamProviderRef<List<Comment>> {
  /// The parameter `workSpaceId` of this provider.
  int get workSpaceId;
}

class _FetchCommentsStreamProviderElement
    extends AutoDisposeStreamProviderElement<List<Comment>>
    with FetchCommentsStreamRef {
  _FetchCommentsStreamProviderElement(super.provider);

  @override
  int get workSpaceId => (origin as FetchCommentsStreamProvider).workSpaceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
