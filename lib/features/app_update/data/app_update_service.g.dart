// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_service.dart';

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

String $appUpdateServiceHash() => r'c49e0bf298334d747cfcbb336e5aa2ded8979f9b';

/// See also [appUpdateService].
final appUpdateServiceProvider = AutoDisposeProvider<AppUpdateService>(
  appUpdateService,
  name: r'appUpdateServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $appUpdateServiceHash,
);
typedef AppUpdateServiceRef = AutoDisposeProviderRef<AppUpdateService>;
String $updateStatusHash() => r'3c0ac2a868004073674f9a09da2f2949be603c47';

/// See also [updateStatus].
final updateStatusProvider = AutoDisposeFutureProvider<AppUpdateStatus>(
  updateStatus,
  name: r'updateStatusProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $updateStatusHash,
);
typedef UpdateStatusRef = AutoDisposeFutureProviderRef<AppUpdateStatus>;
