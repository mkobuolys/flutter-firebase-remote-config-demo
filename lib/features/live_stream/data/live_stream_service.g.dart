// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_stream_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $liveStreamServiceHash() => r'342df6a4554712559362d4e626497b0abc842f8f';

/// See also [liveStreamService].
final liveStreamServiceProvider = AutoDisposeProvider<LiveStreamService>(
  liveStreamService,
  name: r'liveStreamServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $liveStreamServiceHash,
);
typedef LiveStreamServiceRef = AutoDisposeProviderRef<LiveStreamService>;
String $streamLiveHash() => r'f83fdae40db862682bf6ed06fab607d1530497e1';

/// See also [streamLive].
final streamLiveProvider = AutoDisposeProvider<bool>(
  streamLive,
  name: r'streamLiveProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $streamLiveHash,
);
typedef StreamLiveRef = AutoDisposeProviderRef<bool>;
String $streamLinkHash() => r'a6ee09d8734d15efa3f2294fadfa6d36ebbf959e';

/// See also [streamLink].
final streamLinkProvider = AutoDisposeProvider<String>(
  streamLink,
  name: r'streamLinkProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $streamLinkHash,
);
typedef StreamLinkRef = AutoDisposeProviderRef<String>;
