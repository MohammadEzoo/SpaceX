// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return Rocket(
    rocket_id: json['rocket_id'] as String,
    rocket_name: json['rocket_name'] as String,
    rocket_type: json['rocket_type'] as String,
  );
}

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'rocket_id': instance.rocket_id,
      'rocket_name': instance.rocket_name,
      'rocket_type': instance.rocket_type,
    };
