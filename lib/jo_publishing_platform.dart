library jo_publishing_platform_features;

import 'package:jo_publishing_platform_features/platform/cafebazaar.dart';
import 'package:jo_publishing_platform_features/contracts/publishing_platform_features.dart';
import 'package:jo_publishing_platform_features/platform/myket.dart';

import 'contracts/platforms_enum.dart';

class JOPublishingPlatform extends PublishingPlatformFeatures {
  final Platforms? platform;
  final String developerId;
  final String packageName;

  JOPublishingPlatform(
    this.developerId,
    this.packageName, {
    required this.platform,
  });

  @override
  Future<dynamic> getMyOtherApps() async {
    switch (platform) {
      case Platforms.Cafebazaar:
        await CafeBazaar(developerId: developerId, packageName: packageName)
            .getMyOtherApps();
        break;
      case Platforms.Myket:
        await Myket(developerId: developerId, packageName: packageName)
            .getMyOtherApps();
        break;
      default:
        await CafeBazaar(developerId: developerId, packageName: packageName)
            .getMyOtherApps();
        await Myket(developerId: developerId, packageName: packageName)
            .getMyOtherApps();
        break;
    }
  }

  @override
  Future<dynamic> makeCommentToApp() async {
    switch (platform) {
      case Platforms.Cafebazaar:
        await CafeBazaar(developerId: developerId, packageName: packageName)
            .makeCommentToApp();
        break;
      case Platforms.Myket:
        await Myket(developerId: developerId, packageName: packageName)
            .makeCommentToApp();
        break;
      default:
        await CafeBazaar(developerId: developerId, packageName: packageName)
            .makeCommentToApp();
        await Myket(developerId: developerId, packageName: packageName)
            .makeCommentToApp();
        break;
    }
  }
}
