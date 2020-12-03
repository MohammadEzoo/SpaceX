import 'package:json_annotation/json_annotation.dart';

part 'Rocket.g.dart';

@JsonSerializable()
class Rocket {
  String rocketId;
  String rocketName;
  String rocketType;

  Rocket({
    this.rocketId,
    this.rocketName,
    this.rocketType,
  });

  factory Rocket.fromJson(json) => _$RocketFromJson(json);
  toJson() => _$RocketToJson(this);
}
