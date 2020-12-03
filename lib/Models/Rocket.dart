import 'package:json_annotation/json_annotation.dart';

part 'Rocket.g.dart';

@JsonSerializable()
class Rocket {
  String rocket_id;
  String rocket_name;
  String rocket_type;

  Rocket({
    this.rocket_id,
    this.rocket_name,
    this.rocket_type,
  });

  factory Rocket.fromJson(json) => _$RocketFromJson(json);
  toJson() => _$RocketToJson(this);
}
