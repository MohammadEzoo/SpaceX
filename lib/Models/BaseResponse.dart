import 'package:spacex/Models/Launch.dart';

import 'package:json_annotation/json_annotation.dart';
part 'BaseResponse.g.dart';

@JsonSerializable()
class BaseResponse {
  final List<Launch> launches;
  BaseResponse(this.launches);
  factory BaseResponse.fromJson(json) => _$BaseResponseFromJson(json);
  toJson() => _$BaseResponseToJson(this);
}
