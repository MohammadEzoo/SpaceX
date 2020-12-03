// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LaunchSite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchSite _$LaunchSiteFromJson(Map<String, dynamic> json) {
  return LaunchSite(
    siteId: json['siteId'] as String,
    siteName: json['siteName'] as String,
    siteNameLong: json['siteNameLong'] as String,
  );
}

Map<String, dynamic> _$LaunchSiteToJson(LaunchSite instance) =>
    <String, dynamic>{
      'siteId': instance.siteId,
      'siteName': instance.siteName,
      'siteNameLong': instance.siteNameLong,
    };
