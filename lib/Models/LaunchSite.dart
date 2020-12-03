
import 'package:json_annotation/json_annotation.dart';

part 'LaunchSite.g.dart';

@JsonSerializable()
class LaunchSite {
  String siteId;
  String siteName;
  String siteNameLong;

  LaunchSite({this.siteId, this.siteName, this.siteNameLong});
  factory LaunchSite.fromJson(json) => _$LaunchSiteFromJson(json);
  toJson() => _$LaunchSiteToJson(this);
}
