import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import '../features/event/data/models/event_session.dart';
import '../features/favorites/data/enums/favorite_button_type.dart';
import '../features/favorites/data/favorites_service.dart';

class EventSessionCard extends ConsumerWidget {
  const EventSessionCard({
    required this.eventSession,
    super.key,
  });

  final EventSession eventSession;

  void _addToFavorites(BuildContext context, WidgetRef ref) {
    ref.read(favoritesServiceProvider).addToFavorites(eventSession.id).then(
      (_) {
        const snackBar = SnackBar(
          content: Text(
            'Add to favorites feature is coming soon!',
            textAlign: TextAlign.center,
          ),
        );

        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesEnabled = ref.watch(favoritesEnabledProvider);
    final favoriteButtonType = ref.watch(favoriteButtonTypeProvider);

    return Slidable(
      enabled: favoritesEnabled &&
          FavoriteButtonType.slideable == favoriteButtonType,
      endActionPane: ActionPane(
        motion: const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: ScrollMotion(),
        ),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            backgroundColor: Colors.red,
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(16.0),
            ),
            icon: Icons.favorite,
            onPressed: (context) => _addToFavorites(context, ref),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(eventSession.color),
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(16.0),
          ),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              _TimeIndicator(
                dateTimeFrom: eventSession.dateTimeFrom,
                dateTimeTo: eventSession.dateTimeTo,
              ),
              Expanded(
                child: _CardContent(
                  title: eventSession.title ?? 'TBA',
                  speakers: eventSession.speakers,
                  onAddToFavorites: () => _addToFavorites(context, ref),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    required this.title,
    required this.speakers,
    required this.onAddToFavorites,
  });

  final String title;
  final List<String> speakers;
  final VoidCallback onAddToFavorites;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).backgroundColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 16.0),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: textColor, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (speakers.isNotEmpty)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'by ${speakers.join(', ')}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: textColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            const SizedBox(width: 16.0),
            _FavoriteButton(onTap: onAddToFavorites),
          ],
        ),
      ],
    );
  }
}

class _FavoriteButton extends ConsumerWidget {
  const _FavoriteButton({
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesEnabled = ref.watch(favoritesEnabledProvider);
    final favoriteButtonType = ref.watch(favoriteButtonTypeProvider);

    final enabled =
        favoritesEnabled && FavoriteButtonType.card == favoriteButtonType;

    if (!enabled) return const SizedBox.shrink();

    const borderRadius = BorderRadius.only(topLeft: Radius.circular(16.0));

    return Material(
      borderRadius: borderRadius,
      color: Colors.red,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.favorite, size: 20.0),
        ),
      ),
    );
  }
}

class _TimeIndicator extends StatelessWidget {
  const _TimeIndicator({
    required this.dateTimeFrom,
    required this.dateTimeTo,
  });

  final DateTime dateTimeFrom;
  final DateTime dateTimeTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _TimeColumn(dateTimeFrom),
          Container(
            height: 16.0,
            width: 1.0,
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            color: Theme.of(context).backgroundColor,
          ),
          _TimeColumn(dateTimeTo),
        ],
      ),
    );
  }
}

class _TimeColumn extends StatelessWidget {
  const _TimeColumn(this.dateTime);

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).backgroundColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          DateFormat.H().format(dateTime),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w600,
                height: 1.0,
              ),
        ),
        const SizedBox(height: 2.0),
        Text(
          DateFormat('mm').format(dateTime),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
                height: 1.0,
              ),
        ),
      ],
    );
  }
}
