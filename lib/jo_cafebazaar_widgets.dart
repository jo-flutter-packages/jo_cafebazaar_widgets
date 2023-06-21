library jo_cafebazaar_widgets;

import 'package:url_launcher/url_launcher.dart';
import 'package:jo_cafebazaar_widgets/contracts/publishing_platform_features.dart';

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

class Myket extends PublishingPlatformFeatures {
  final String developerId;
  final String packageName;

  Myket({
    required this.developerId,
    required this.packageName,
  });

  @override
  Future getMyOtherApps() async {
    var url = Uri.parse("myket://developer/$developerId");
    if (!await launchUrl(url)) {}
  }

  @override
  Future makeCommentToApp() async {
    var url = Uri.parse("myket://comment?id=$packageName");
    if (!await launchUrl(url)) {}
  }
}
