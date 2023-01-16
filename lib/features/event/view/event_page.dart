import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../widgets/event_session_card.dart';
import '../../../widgets/loader.dart';
import '../../live_stream/widgets/stream_live_notification.dart';
import '../data/event_repository.dart';

class EventPage extends ConsumerWidget {
  static const path = '/';

  const EventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventInfo = ref.watch(eventInfoProvider);

    return Scaffold(
      body: SafeArea(
        child: eventInfo.maybeWhen(
          data: (eventInfo) => Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                const LiveStreamNotification(),
                _Header(
                  title: eventInfo.title,
                  startsAt: eventInfo.startsAt,
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
                    itemBuilder: (context, index) => EventSessionCard(
                      eventSession: eventInfo.sessions[index],
                    ).animate(delay: Duration(milliseconds: 100 * index)).slide(
                          begin: const Offset(1.0, 0.0),
                          curve: Curves.easeOutQuad,
                        ),
                    itemCount: eventInfo.sessions.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                  ),
                ),
              ],
            ),
          ),
          orElse: () => const Loader(),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.title,
    required this.startsAt,
  });

  final String title;
  final DateTime startsAt;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.onBackground;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FlutterLogo(size: 36.0),
              const SizedBox(width: 8.0),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: textColor),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text(
            DateFormat.yMMMd().format(startsAt),
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
