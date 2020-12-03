import 'package:json_annotation/json_annotation.dart';

import 'LaunchSite.dart';
import 'Links.dart';
import 'Rocket.dart';

part 'Launch.g.dart';

@JsonSerializable()
class Launch {
  int flight_number;
  String mission_name;
  List<String> mission_id;
  String launch_year;
  String launch_date_local;
  int launch_date_unix;
  Rocket rocket;
  LaunchSite launch_site;
  Links links;
  String details;
  bool upcoming;
  String launch_dateSource;

  Launch(
      {this.flight_number,
      this.mission_name,
      this.mission_id,
      this.launch_date_unix,
      this.launch_year,
      this.launch_date_local,
      this.rocket,
      this.launch_site,
      this.links,
      this.details,
      this.upcoming,
      this.launch_dateSource});
  factory Launch.fromJson(json) => _$LaunchFromJson(json);
  toJson() => _$LaunchToJson(this);
}
