import 'package:url_launcher/url_launcher.dart';

import '../contracts/publishing_platform_features.dart';

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
