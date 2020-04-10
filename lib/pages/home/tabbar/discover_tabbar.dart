import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_reader/utils/net_util.dart';
import 'package:news_reader/widgets/card_widget.dart';

class DiscoverTabBar extends StatefulWidget {
  @override
  _DiscoverTabBarState createState() => _DiscoverTabBarState();
}

class _DiscoverTabBarState extends State<DiscoverTabBar> {
  var _item;

  @override
  void initState() {
    super.initState();
    NetUtil.init();
    this._getTest();
  }

  _getTest() {
    NetUtil.test(context).then((v) {
      setState(() {
        _item = v;
      });
    });
  }

  Widget build(BuildContext context) {
    return Container(
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
            itemCount: _item.length));
  }
}
