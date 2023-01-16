import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../util/url_launcher.dart';
import '../data/live_stream_service.dart';

class LiveStreamNotification extends ConsumerWidget {
  const LiveStreamNotification({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamLive = ref.watch(streamLiveProvider);

    if (!streamLive) return const SizedBox.shrink();

    final streamLink = ref.watch(streamLinkProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      color: Colors.red,
      child: Text.rich(
        TextSpan(
          text: 'The event is LIVE! ',
          children: [
            TextSpan(
              text: 'Watch here.',
              style: const TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap =
                    () => ref.read(urlLauncherProvider).launchUrl(streamLink),
            ),
          ],
        ),
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
