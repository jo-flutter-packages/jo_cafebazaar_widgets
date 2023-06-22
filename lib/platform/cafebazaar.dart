import 'package:url_launcher/url_launcher.dart';

import '../contracts/publishing_platform_features.dart';

class CafeBazaar extends PublishingPlatformFeatures {
  final String developerId;
  final String packageName;

  CafeBazaar({
    required this.developerId,
    required this.packageName,
  });

  @override
  Future<dynamic> getMyOtherApps() async {
    var url = Uri.parse("bazaar://collection?slug=by_author&aid=$developerId");
    if (!await launchUrl(url)) {}
  }

  @override
  Future<dynamic> makeCommentToApp() async {
    var url = Uri.parse("bazaar://details?id=$packageName");
    if (!await launchUrl(url)) {}
  }
}
