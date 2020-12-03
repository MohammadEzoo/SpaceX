// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return Launch(
    flight_number: json['flight_number'] as int,
    mission_name: json['mission_name'] as String,
    mission_id: (json['mission_id'] as List)?.map((e) => e as String)?.toList(),
    launch_date_unix: json['launch_date_unix'] as int,
    launch_year: json['launch_year'] as String,
    launch_date_local: json['launch_date_local'] as String,
    rocket: json['rocket'] == null ? null : Rocket.fromJson(json['rocket']),
    launch_site: json['launch_site'] == null
        ? null
        : LaunchSite.fromJson(json['launch_site']),
    links: json['links'] == null ? null : Links.fromJson(json['links']),
    details: json['details'] as String,
    upcoming: json['upcoming'] as bool,
    launch_dateSource: json['launch_dateSource'] as String,
  );
}

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'flight_number': instance.flight_number,
      'mission_name': instance.mission_name,
      'mission_id': instance.mission_id,
      'launch_year': instance.launch_year,
      'launch_date_local': instance.launch_date_local,
      'launch_date_unix': instance.launch_date_unix,
      'rocket': instance.rocket,
      'launch_site': instance.launch_site,
      'links': instance.links,
      'details': instance.details,
      'upcoming': instance.upcoming,
      'launch_dateSource': instance.launch_dateSource,
    };
