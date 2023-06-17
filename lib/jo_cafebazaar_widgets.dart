library jo_cafebazaar_widgets;

import 'package:cafebazaar_flutter/cafebazaar_flutter.dart';

Future<dynamic> getMyOtherApps(String developerId) async {
  final bazaar = CafebazaarFlutter.instance;
  await bazaar.openDeveloperPage(developerId);
}

Future<dynamic> makeCommentToApp(String packageName) async {
  final bazaar = CafebazaarFlutter.instance;
  await bazaar.openCommentForm(packageName);
}
