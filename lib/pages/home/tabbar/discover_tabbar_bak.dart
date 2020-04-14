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
  static const loadingTag = "#loadding#";

  @override
  void initState() {
    super.initState();
    NetUtil.init();
  }

  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: NetUtil.getTopNews(context),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else {
              print(snapshot);
              snapshot.data.add(loadingTag);
              return ListView.separated(
                  itemBuilder: (context, index) {
                    if (snapshot.data[index] == '#loadding#') {
                      NetUtil.getTopNews(context).then((value) {});
                      return Container(
                        child: Text('加载中'),
                      );
                    } else {
                      return Container(
                        alignment: Alignment.center,
                        child: CardWidget(snapshot.data[index]),
                      );
                    }
                  },
                  separatorBuilder: (context, index) => Divider(
                        height: 0,
                      ),
                  itemCount: snapshot.data.length);
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
