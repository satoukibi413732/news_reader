import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class NetUtil {
  static Dio _dio;
  static final String baseUrl = 'https://api.isoyu.com/api';
  static void init() {
    _dio = Dio();
  }

  static Future<Response> _get(BuildContext context, String url) async {
    try {
      return await _dio.get(url);
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  static Future test(BuildContext context) async {
    var response = await _get(context,
        'http://c.m.163.com/nc/article/headline/T1348647853363/0-10.html');
    return response.data['T1348647853363'];
  }
}
