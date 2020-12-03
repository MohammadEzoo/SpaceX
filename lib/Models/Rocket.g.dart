// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return Rocket(
    rocketId: json['rocketId'] as String,
    rocketName: json['rocketName'] as String,
    rocketType: json['rocketType'] as String,
  );
}

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'rocketId': instance.rocketId,
      'rocketName': instance.rocketName,
      'rocketType': instance.rocketType,
    };
