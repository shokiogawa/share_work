// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_worship_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commandWorshipUseCaseHash() =>
    r'5612beedfa33bf45e10e8109866fd912614c4a83';

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

abstract class _$CommandWorshipUseCase
    extends BuildlessAutoDisposeAsyncNotifier<List<WorshipCard>> {
  late final int shrineId;

  FutureOr<List<WorshipCard>> build(
    int shrineId,
  );
}

/// See also [CommandWorshipUseCase].
@ProviderFor(CommandWorshipUseCase)
const commandWorshipUseCaseProvider = CommandWorshipUseCaseFamily();

/// See also [CommandWorshipUseCase].
class CommandWorshipUseCaseFamily
    extends Family<AsyncValue<List<WorshipCard>>> {
  /// See also [CommandWorshipUseCase].
  const CommandWorshipUseCaseFamily();

  /// See also [CommandWorshipUseCase].
  CommandWorshipUseCaseProvider call(
    int shrineId,
  ) {
    return CommandWorshipUseCaseProvider(
      shrineId,
    );
  }

  @override
  CommandWorshipUseCaseProvider getProviderOverride(
    covariant CommandWorshipUseCaseProvider provider,
  ) {
    return call(
      provider.shrineId,
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
  String? get name => r'commandWorshipUseCaseProvider';
}

/// See also [CommandWorshipUseCase].
class CommandWorshipUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CommandWorshipUseCase,
        List<WorshipCard>> {
  /// See also [CommandWorshipUseCase].
  CommandWorshipUseCaseProvider(
    int shrineId,
  ) : this._internal(
          () => CommandWorshipUseCase()..shrineId = shrineId,
          from: commandWorshipUseCaseProvider,
          name: r'commandWorshipUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commandWorshipUseCaseHash,
          dependencies: CommandWorshipUseCaseFamily._dependencies,
          allTransitiveDependencies:
              CommandWorshipUseCaseFamily._allTransitiveDependencies,
          shrineId: shrineId,
        );

  CommandWorshipUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.shrineId,
  }) : super.internal();

  final int shrineId;

  @override
  FutureOr<List<WorshipCard>> runNotifierBuild(
    covariant CommandWorshipUseCase notifier,
  ) {
    return notifier.build(
      shrineId,
    );
  }

  @override
  Override overrideWith(CommandWorshipUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommandWorshipUseCaseProvider._internal(
        () => create()..shrineId = shrineId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        shrineId: shrineId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CommandWorshipUseCase,
      List<WorshipCard>> createElement() {
    return _CommandWorshipUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommandWorshipUseCaseProvider && other.shrineId == shrineId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, shrineId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommandWorshipUseCaseRef
    on AutoDisposeAsyncNotifierProviderRef<List<WorshipCard>> {
  /// The parameter `shrineId` of this provider.
  int get shrineId;
}

class _CommandWorshipUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CommandWorshipUseCase,
        List<WorshipCard>> with CommandWorshipUseCaseRef {
  _CommandWorshipUseCaseProviderElement(super.provider);

  @override
  int get shrineId => (origin as CommandWorshipUseCaseProvider).shrineId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
