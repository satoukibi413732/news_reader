import 'package:flutter/material.dart';
import 'package:news_reader/pages/home/news_page.dart';
import 'package:news_reader/pages/mine/mine_page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.tv), title: Text('每日新闻')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('测试')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[NewsPage(), MinePage()],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
