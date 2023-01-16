import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

part 'url_launcher.g.dart';

@riverpod
UrlLauncher urlLauncher(_) => const UrlLauncher();

class UrlLauncher {
  const UrlLauncher();

  Future<void> launchUrl(String urlString) async {
    final url = Uri.tryParse(urlString);

    if (url == null) return;

    if (!await url_launcher.launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
