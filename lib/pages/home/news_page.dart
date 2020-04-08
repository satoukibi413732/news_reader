import 'package:flutter/material.dart';
import 'package:news_reader/pages/home/tabbar/discover_tabbar.dart';
import 'package:news_reader/pages/home/tabbar/section_tabbar.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => new _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with TickerProviderStateMixin {
  TabController _tabController;
  List tabs = ['发现', "专栏"];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
        bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16, color: Colors.white),
            unselectedLabelStyle: TextStyle(fontSize: 14, color: Colors.grey),
            controller: _tabController,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          DiscoverTabBar(),
          SectionTabBar(),
        ],
      ),
    );
  }
}
