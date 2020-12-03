// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return Launch(
    flightNumber: json['flightNumber'] as int,
    missionName: json['missionName'] as String,
    missionId: (json['missionId'] as List)?.map((e) => e as String)?.toList(),
    launchYear: json['launchYear'] as String,
    launchDateLocal: json['launchDateLocal'] as String,
    rocket: json['rocket'] == null ? null : Rocket.fromJson(json['rocket']),
    launchSite: json['launchSite'] == null
        ? null
        : LaunchSite.fromJson(json['launchSite']),
    links: json['links'] == null ? null : Links.fromJson(json['links']),
    details: json['details'] as String,
    upcoming: json['upcoming'] as bool,
    launchDateSource: json['launchDateSource'] as String,
  );
}

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'flightNumber': instance.flightNumber,
      'missionName': instance.missionName,
      'missionId': instance.missionId,
      'launchYear': instance.launchYear,
      'launchDateLocal': instance.launchDateLocal,
      'rocket': instance.rocket,
      'launchSite': instance.launchSite,
      'links': instance.links,
      'details': instance.details,
      'upcoming': instance.upcoming,
      'launchDateSource': instance.launchDateSource,
    };
