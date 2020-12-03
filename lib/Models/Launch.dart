import 'package:json_annotation/json_annotation.dart';

import 'LaunchSite.dart';
import 'Links.dart';
import 'Rocket.dart';

part 'Launch.g.dart';

@JsonSerializable()
class Launch {
  int flightNumber;
  String missionName;
  List<String> missionId;
  String launchYear;
  String launchDateLocal;
  int launch_date_unix;
  Rocket rocket;
  LaunchSite launchSite;
  Links links;
  String details;
  bool upcoming;
  String launchDateSource;

  Launch(
      {this.flightNumber,
      this.missionName,
      this.missionId,
      this.launch_date_unix,
      this.launchYear,
      this.launchDateLocal,
      this.rocket,
      this.launchSite,
      this.links,
      this.details,
      this.upcoming,
      this.launchDateSource});
  factory Launch.fromJson(json) => _$LaunchFromJson(json);
  toJson() => _$LaunchToJson(this);
}
