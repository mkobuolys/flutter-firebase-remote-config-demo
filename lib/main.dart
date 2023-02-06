import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_router.dart';
import 'features/firebase/firebase_options.dart';
import 'features/firebase/firebase_remote_config_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final firebaseRemoteConfigService = FirebaseRemoteConfigService(
    firebaseRemoteConfig: FirebaseRemoteConfig.instance,
  );
  await firebaseRemoteConfigService.init();

  runApp(
    ProviderScope(
      overrides: [
        firebaseRemoteConfigServiceProvider.overrideWith(
          (_) => firebaseRemoteConfigService,
        ),
      ],
      child: const App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    const backgroundColor = Color(0xFF1F1F1F);

    return MaterialApp.router(
      title: 'Flutter Firebase Remote Config Demo',
      routerConfig: router,
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(background: backgroundColor),
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: backgroundColor,
        typography: Typography.material2021(),
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
          foregroundColor: backgroundColor,
          splashColor: backgroundColor.withOpacity(0.2),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.red,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
