// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_service.dart';

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

String $favoritesServiceHash() => r'309d5196db9f2cace22f6ac3d004d0f4d8a8d202';

/// See also [favoritesService].
final favoritesServiceProvider = AutoDisposeProvider<FavoritesService>(
  favoritesService,
  name: r'favoritesServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $favoritesServiceHash,
);
typedef FavoritesServiceRef = AutoDisposeProviderRef<FavoritesService>;
String $favoritesEnabledHash() => r'eddd7d5c767cabb6e6600ba9921e19be2361864e';

/// See also [favoritesEnabled].
final favoritesEnabledProvider = AutoDisposeProvider<bool>(
  favoritesEnabled,
  name: r'favoritesEnabledProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $favoritesEnabledHash,
);
typedef FavoritesEnabledRef = AutoDisposeProviderRef<bool>;
String $favoriteButtonTypeHash() => r'5fa9b452341fec297fa9729a50f34c1f7231e78a';

/// See also [favoriteButtonType].
final favoriteButtonTypeProvider = AutoDisposeProvider<FavoriteButtonType>(
  favoriteButtonType,
  name: r'favoriteButtonTypeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $favoriteButtonTypeHash,
);
typedef FavoriteButtonTypeRef = AutoDisposeProviderRef<FavoriteButtonType>;
