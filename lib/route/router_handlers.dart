import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_reader/pages/home/home_page.dart';
import 'package:news_reader/pages/not_found_page.dart';

var notFoundHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
  return NotFoundPage();
});

var homeHandler = new Handler(
  handlerFunc: (BuildContext context,Map<String,List<Object>> params){
    return HomePage();
  }
);