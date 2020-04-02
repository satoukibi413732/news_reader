import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_reader/application.dart';
import 'package:news_reader/route/routes.dart';

import '../application.dart';

class NavigatorUtil {
  static _navigator(BuildContext context, String path,
      {bool replace = false,
      bool clearStack = false,
      Duration transitionDuration = const Duration(milliseconds: 250),
      RouteTransitionsBuilder transitionBuilder}) {
    Application.router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder,
        transition: TransitionType.material);
  }

  static void goNotFoundPage(BuildContext context) {
    _navigator(context, Routes.notFound);
  }

  static void goHomePage(BuildContext context) {
    _navigator(context, Routes.home);
  }
}
