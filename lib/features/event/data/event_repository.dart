import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_remote_config_service.dart';
import 'models/event_info.dart';

part 'event_repository.g.dart';

@riverpod
EventRepository eventRepository(EventRepositoryRef ref) {
  return EventRepository(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
Future<EventInfo> eventInfo(EventInfoRef ref) {
  return ref.watch(eventRepositoryProvider).getEventInfo();
}

class EventRepository {
  const EventRepository({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  Future<EventInfo> getEventInfo() async {
    final json = firebaseRemoteConfigService.getEventInfoJson();

    return EventInfo.fromJson(jsonDecode(json) as Map<String, dynamic>);
  }
}
