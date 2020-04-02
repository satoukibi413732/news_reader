import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_reader/pages/not_found_page.dart';
import 'package:news_reader/route/router_handlers.dart';

class Routes {
  static String home = '/';
  static String notFound = '/404';
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('没有这个网页');
      return NotFoundPage();
    });
    router.define(home, handler: homeHandler);
    router.define(notFound, handler: notFoundHandler);
  }
}
