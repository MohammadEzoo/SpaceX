import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spacex/Data/http_helper/http_helper.dart';
import 'package:spacex/Data/repository/irepository.dart';
import 'package:spacex/Data/repository/repository.dart';

import 'App/app.dart';
import 'Core/constent.dart';

void main() async {
  Get.put(Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)));
  Get.put(HttpHelper(Get.find<Dio>()));
  Get.put(Repository(Get.find<HttpHelper>()));
  runApp(App());
}
