import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:news_reader/utils/net_util.dart';
import 'package:news_reader/widgets/card_widget.dart';

GlobalKey<_DiscoverTabBarState> discoverTabBar = GlobalKey();

class DiscoverTabBar extends StatefulWidget {
  final handleShowChange;
  DiscoverTabBar({Key key, this.handleShowChange}) : super(key: key);

  @override
  _DiscoverTabBarState createState() => _DiscoverTabBarState();
}

class _DiscoverTabBarState extends State<DiscoverTabBar> {
  List _item = [];
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 1000) {
        widget.handleShowChange(true);
      } else {
        widget.handleShowChange(false);
      }
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        Fluttertoast.showToast(
          msg: "没有更多了",
        );
      }
    });
    NetUtil.init();
    _getMoreData();
  }

  void goTop() {
    _scrollController.animateTo(0.0,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  Future _getMoreData() async {
    print('loading');
    await NetUtil.getTopNews(context).then((value) {
      setState(() {
        _item = value;
      });
      print('down!');
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              child: CardWidget(_item[index]),
            );
          },
          separatorBuilder: (context, index) => Divider(
            height: 0,
          ),
          itemCount: _item.length,
          controller: _scrollController,
        ),
      ),
    );
  }

  Future _refresh() async {
    _item.clear();
    await _getMoreData();
  }
}
