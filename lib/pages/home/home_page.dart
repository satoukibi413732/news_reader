import 'package:flutter/material.dart';
import 'package:news_reader/pages/home/news_page.dart';
import 'package:news_reader/pages/mine/mine_page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('我的')),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        body: PageView(
          controller: _pageController,
          children: <Widget>[NewsPage(), MinePage()],
        ));
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
