// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_shrine_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchShrineDetailUseCaseHash() =>
    r'd0fc96c0f4e795f0639097d04fb873a7676f911a';

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

/// See also [fetchShrineDetailUseCase].
@ProviderFor(fetchShrineDetailUseCase)
const fetchShrineDetailUseCaseProvider = FetchShrineDetailUseCaseFamily();

/// See also [fetchShrineDetailUseCase].
class FetchShrineDetailUseCaseFamily extends Family<AsyncValue<Shrine>> {
  /// See also [fetchShrineDetailUseCase].
  const FetchShrineDetailUseCaseFamily();

  /// See also [fetchShrineDetailUseCase].
  FetchShrineDetailUseCaseProvider call(
    int idShrine,
  ) {
    return FetchShrineDetailUseCaseProvider(
      idShrine,
    );
  }

  @override
  FetchShrineDetailUseCaseProvider getProviderOverride(
    covariant FetchShrineDetailUseCaseProvider provider,
  ) {
    return call(
      provider.idShrine,
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
  String? get name => r'fetchShrineDetailUseCaseProvider';
}

/// See also [fetchShrineDetailUseCase].
class FetchShrineDetailUseCaseProvider
    extends AutoDisposeFutureProvider<Shrine> {
  /// See also [fetchShrineDetailUseCase].
  FetchShrineDetailUseCaseProvider(
    int idShrine,
  ) : this._internal(
          (ref) => fetchShrineDetailUseCase(
            ref as FetchShrineDetailUseCaseRef,
            idShrine,
          ),
          from: fetchShrineDetailUseCaseProvider,
          name: r'fetchShrineDetailUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchShrineDetailUseCaseHash,
          dependencies: FetchShrineDetailUseCaseFamily._dependencies,
          allTransitiveDependencies:
              FetchShrineDetailUseCaseFamily._allTransitiveDependencies,
          idShrine: idShrine,
        );

  FetchShrineDetailUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idShrine,
  }) : super.internal();

  final int idShrine;

  @override
  Override overrideWith(
    FutureOr<Shrine> Function(FetchShrineDetailUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchShrineDetailUseCaseProvider._internal(
        (ref) => create(ref as FetchShrineDetailUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idShrine: idShrine,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Shrine> createElement() {
    return _FetchShrineDetailUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchShrineDetailUseCaseProvider &&
        other.idShrine == idShrine;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idShrine.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchShrineDetailUseCaseRef on AutoDisposeFutureProviderRef<Shrine> {
  /// The parameter `idShrine` of this provider.
  int get idShrine;
}

class _FetchShrineDetailUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<Shrine>
    with FetchShrineDetailUseCaseRef {
  _FetchShrineDetailUseCaseProviderElement(super.provider);

  @override
  int get idShrine => (origin as FetchShrineDetailUseCaseProvider).idShrine;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
