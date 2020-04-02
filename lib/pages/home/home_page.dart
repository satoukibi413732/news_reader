import 'package:flutter/material.dart';
import 'package:news_reader/utils/navigator_util.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('jump'),
          onPressed: () {
            NavigatorUtil.goNotFoundPage(context);
//            Application.router.navigateTo(context, '/404');
          },
        ),
      ),
    );
  }
}
