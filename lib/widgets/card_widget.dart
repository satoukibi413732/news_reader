import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'browser.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  var item;
  CardWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[Text(item['title'])],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[Text(item['source'])],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image(
                    image: NetworkImage(item['imgsrc']),
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text("${item['digest']}", softWrap: true),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
//                Icon(
//                  Icons.date_range,
//                  color: Colors.grey,
//                ),
//                Text(item['ptime'].toString()),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
                Text(item['votecount'].toString()),
                Icon(
                  Icons.reply,
                  color: Colors.grey,
                ),
                Text(item['replyCount'].toString()),
              ],
            )
          ],
        ),
      ),
      onPressed: () {
        print(item['docid']);
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
          return Browser(
            url:
                "https://c.m.163.com/news/a/${item['docid']}.html?from=special",
            title: item['title'],
          );
        }));
      },
    );
  }
}
