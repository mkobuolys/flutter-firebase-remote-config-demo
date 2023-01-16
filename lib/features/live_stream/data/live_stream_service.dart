import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_remote_config_service.dart';

part 'live_stream_service.g.dart';

@riverpod
LiveStreamService liveStreamService(LiveStreamServiceRef ref) {
  return LiveStreamService(
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
bool streamLive(StreamLiveRef ref) {
  return ref.watch(liveStreamServiceProvider).streamLive();
}

@riverpod
String streamLink(StreamLinkRef ref) {
  return ref.watch(liveStreamServiceProvider).streamLink();
}

class LiveStreamService {
  const LiveStreamService({
    required this.firebaseRemoteConfigService,
  });

  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  bool streamLive() {
    return firebaseRemoteConfigService.getStreamLive();
  }

  String streamLink() {
    return firebaseRemoteConfigService.getStreamLink();
  }
}
