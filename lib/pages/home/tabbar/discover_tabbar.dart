import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_reader/widgets/card_widget.dart';

class DiscoverTabBar extends StatefulWidget {
  @override
  _DiscoverTabBarState createState() => _DiscoverTabBarState();
}

class _DiscoverTabBarState extends State<DiscoverTabBar> {
//  List _item = [
//    '1',
//    '1',
//    '1',
//    '1',
//    '1',
//  ];
  List<Object> _item = [
    {
      "title": '标题1',
      "date": '1992/10/1',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题2',
      "date": '1992/10/2',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题3',
      "date": '1992/10/3',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题4',
      "date": '1992/10/4',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题5',
      "date": '1992/10/5',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题6',
      "date": '1992/10/6',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题7',
      "date": '1992/10/7',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题8',
      "date": '1992/10/8',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    },
    {
      "title": '标题9',
      "date": '1992/10/9',
      "imgSrc":
          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4013872795,3477603409&fm=11&gp=0.jpg'
    }
  ];
  static const loadingTag = "##loading##";
  @override
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
