import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'features/event/view/event_page.dart';
import 'features/splash/view/splash_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(_) => GoRouter(
      routes: [
        GoRoute(
          path: EventPage.path,
          builder: (context, state) => const EventPage(),
        ),
        GoRoute(
          path: SplashPage.path,
          builder: (context, state) => const SplashPage(),
        ),
      ],
      initialLocation: SplashPage.path,
    );
