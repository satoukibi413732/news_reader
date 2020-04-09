import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
//          , Text(item['date'])
            children: <Widget>[Text(item['title'])],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
//              Expanded(
//                flex: 1,
//                child: Image(
//                  image: NetworkImage(item['imgSrc']),
//                  width: 100,
//                ),
//              ),
//              Expanded(
//                flex: 2,
//                child: Text('1' * 100, softWrap: true),
//              ),
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
