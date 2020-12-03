import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:spacex/Models/BaseResponse.dart';
import 'package:spacex/Models/Launch.dart';

import 'Ihttp_helper.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
  }

  @override
  Future<List<Launch>> getUpcommingLaunches() async {
    try {
      final response = await _dio.get('launches/upcoming');

      if (response.statusCode == 200) {
        final BaseResponse baseResponse =
            BaseResponse.fromJson(json.decode(response.data));
        if (baseResponse.launches != null) {
          return baseResponse.launches;
        } else {
          return Future.error(response.statusMessage);
        }
      } else {
        return Future.error(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }

  @override
  Future<Launch> getNextLaunch() async {
    try {
      final response = await _dio.get('launches/next');

      if (response.statusCode == 200) {
        final Launch launch = Launch.fromJson(json.decode(response.data));
        if (launch != null) {
          return launch;
        } else {
          return Future.error(response.statusMessage);
        }
      } else {
        return Future.error(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }
}
