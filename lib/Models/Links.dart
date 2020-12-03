


import 'package:json_annotation/json_annotation.dart';

part 'Links.g.dart';

@JsonSerializable()
class Links {
  String missionPatch;
  String missionPatchSmall;
  String redditCampaign;

  Links({
    this.missionPatch,
    this.missionPatchSmall,
    this.redditCampaign,
  });

   factory Links.fromJson(json) => _$LinksFromJson(json);
  toJson() => _$LinksToJson(this);

}
