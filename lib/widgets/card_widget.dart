import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CardWidget extends StatelessWidget {
  var item;
  CardWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text(item['title'])],
          ),
          Row(
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
                child: Text("${item['digest']}...", softWrap: true),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
//              Text(item['likedNum']),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () => null,
              ),
              Text('20'),
            ],
          )
        ],
      ),
    );
  }
}
