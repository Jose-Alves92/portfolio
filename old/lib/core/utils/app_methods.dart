import 'package:url_launcher/url_launcher.dart';

// URL Launcher
void openUrl(String url) => launchUrl(Uri.parse(url));
void openMail(String email) async {
  final url = Uri(
    scheme: 'mailto',
    path: email,
  );
await launchUrl(Uri.parse(url.toString()));

}