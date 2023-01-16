import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_remote_config_service.dart';
import 'enums/favorite_button_type.dart';

part 'favorites_service.g.dart';

@riverpod
FavoritesService favoritesService(FavoritesServiceRef ref) {
  return FavoritesService(
    analytics: FirebaseAnalytics.instance,
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
bool favoritesEnabled(FavoritesEnabledRef ref) {
  return ref.watch(favoritesServiceProvider).favoritesEnabled();
}

@riverpod
FavoriteButtonType favoriteButtonType(FavoriteButtonTypeRef ref) {
  return ref.watch(favoritesServiceProvider).favoriteButtonType();
}

class FavoritesService {
  const FavoritesService({
    required this.analytics,
    required this.firebaseRemoteConfigService,
  });

  final FirebaseAnalytics analytics;
  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  Future<void> addToFavorites(String id) async {
    await analytics.logEvent(
      name: 'add_to_favorites',
      parameters: {'session_id': id},
    );
  }

  bool favoritesEnabled() {
    return firebaseRemoteConfigService.getFavoritesEnabled();
  }

  FavoriteButtonType favoriteButtonType() {
    final type = firebaseRemoteConfigService.getFavoriteButtonType();

    return FavoriteButtonType.fromString(type);
  }
}
