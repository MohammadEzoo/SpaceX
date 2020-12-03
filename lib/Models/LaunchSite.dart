
import 'package:json_annotation/json_annotation.dart';

part 'LaunchSite.g.dart';

@JsonSerializable()
class LaunchSite {
  String site_id;
  String site_name;
  String site_name_long;

  LaunchSite({this.site_id, this.site_name, this.site_name_long});
  factory LaunchSite.fromJson(json) => _$LaunchSiteFromJson(json);
  toJson() => _$LaunchSiteToJson(this);
}
