import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class NetUtil {
  static Dio _dio;
  static final String baseUrl = 'http://c.m.163.com/nc';
  static void init() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

  static Future<Response> _get(BuildContext context, String url) async {
    try {
      return await _dio.get(url);
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  static Future getTopNews(BuildContext context) async {
    var response =
        await _get(context, '/article/headline/T1348647853363/0-40.html');
    return Future.value(response.data['T1348647853363']);
  }
}
