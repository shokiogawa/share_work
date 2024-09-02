// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_shrine_list_by_place.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchShrineListByPlaceUseCaseHash() =>
    r'441adc5fc63d6eb65de6f21548b6c71bda37533f';

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

/// See also [fetchShrineListByPlaceUseCase].
@ProviderFor(fetchShrineListByPlaceUseCase)
const fetchShrineListByPlaceUseCaseProvider =
    FetchShrineListByPlaceUseCaseFamily();

/// See also [fetchShrineListByPlaceUseCase].
class FetchShrineListByPlaceUseCaseFamily
    extends Family<AsyncValue<List<Shrine>>> {
  /// See also [fetchShrineListByPlaceUseCase].
  const FetchShrineListByPlaceUseCaseFamily();

  /// See also [fetchShrineListByPlaceUseCase].
  FetchShrineListByPlaceUseCaseProvider call(
    int idPlace,
  ) {
    return FetchShrineListByPlaceUseCaseProvider(
      idPlace,
    );
  }

  @override
  FetchShrineListByPlaceUseCaseProvider getProviderOverride(
    covariant FetchShrineListByPlaceUseCaseProvider provider,
  ) {
    return call(
      provider.idPlace,
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
  String? get name => r'fetchShrineListByPlaceUseCaseProvider';
}

/// See also [fetchShrineListByPlaceUseCase].
class FetchShrineListByPlaceUseCaseProvider
    extends AutoDisposeFutureProvider<List<Shrine>> {
  /// See also [fetchShrineListByPlaceUseCase].
  FetchShrineListByPlaceUseCaseProvider(
    int idPlace,
  ) : this._internal(
          (ref) => fetchShrineListByPlaceUseCase(
            ref as FetchShrineListByPlaceUseCaseRef,
            idPlace,
          ),
          from: fetchShrineListByPlaceUseCaseProvider,
          name: r'fetchShrineListByPlaceUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchShrineListByPlaceUseCaseHash,
          dependencies: FetchShrineListByPlaceUseCaseFamily._dependencies,
          allTransitiveDependencies:
              FetchShrineListByPlaceUseCaseFamily._allTransitiveDependencies,
          idPlace: idPlace,
        );

  FetchShrineListByPlaceUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idPlace,
  }) : super.internal();

  final int idPlace;

  @override
  Override overrideWith(
    FutureOr<List<Shrine>> Function(FetchShrineListByPlaceUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchShrineListByPlaceUseCaseProvider._internal(
        (ref) => create(ref as FetchShrineListByPlaceUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idPlace: idPlace,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Shrine>> createElement() {
    return _FetchShrineListByPlaceUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchShrineListByPlaceUseCaseProvider &&
        other.idPlace == idPlace;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idPlace.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchShrineListByPlaceUseCaseRef
    on AutoDisposeFutureProviderRef<List<Shrine>> {
  /// The parameter `idPlace` of this provider.
  int get idPlace;
}

class _FetchShrineListByPlaceUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<List<Shrine>>
    with FetchShrineListByPlaceUseCaseRef {
  _FetchShrineListByPlaceUseCaseProviderElement(super.provider);

  @override
  int get idPlace => (origin as FetchShrineListByPlaceUseCaseProvider).idPlace;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
