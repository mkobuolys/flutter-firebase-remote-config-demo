import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app_update/data/app_update_service.dart';
import '../../app_update/widgets/app_update_dialog.dart';
import '../../event/view/event_page.dart';

class SplashPage extends ConsumerStatefulWidget {
  static const path = '/splash';

  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      updateStatusProvider,
      (_, cur) => cur.whenData((updateStatus) {
        final updateAvailable = updateStatus.updateAvailable;

        if (!updateAvailable) return context.replace(EventPage.path);

        showAppUpdateDialog(
          context,
          optional: updateStatus.optional,
        );
      }),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: RotationTransition(
            turns: _controller,
            child: const FlutterLogo(size: 64.0),
          ),
        ),
      ),
    );
  }
}
