// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    missionPatch: json['missionPatch'] as String,
    missionPatchSmall: json['missionPatchSmall'] as String,
    redditCampaign: json['redditCampaign'] as String,
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'missionPatch': instance.missionPatch,
      'missionPatchSmall': instance.missionPatchSmall,
      'redditCampaign': instance.redditCampaign,
    };
