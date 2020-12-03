


import 'package:json_annotation/json_annotation.dart';

part 'Links.g.dart';

@JsonSerializable()
class Links {
  String mission_patch;
  String mission_patch_small;
  String reddit_campaign;

  Links({
    this.mission_patch,
    this.mission_patch_small,
    this.reddit_campaign,
  });

   factory Links.fromJson(json) => _$LinksFromJson(json);
  toJson() => _$LinksToJson(this);

}
