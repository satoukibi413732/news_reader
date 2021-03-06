import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:news_reader/application.dart';
import 'package:news_reader/pages/home/home_page.dart';
import 'package:news_reader/route/routes.dart';
import 'package:news_reader/utils/permission_util.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(MyApp());
  PermissionUtil.getPermission([Permission.locationAlways, Permission.storage]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'news_reader',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
        splashColor: Colors.transparent,
      ),
      onGenerateRoute: Application.router.generator,
      home: HomePage(),
    );
  }
}
