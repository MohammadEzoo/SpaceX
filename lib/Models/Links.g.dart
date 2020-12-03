// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    mission_patch: json['mission_patch'] as String,
    mission_patch_small: json['mission_patch_small'] as String,
    reddit_campaign: json['reddit_campaign'] as String,
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'mission_patch': instance.mission_patch,
      'mission_patch_small': instance.mission_patch_small,
      'reddit_campaign': instance.reddit_campaign,
    };
