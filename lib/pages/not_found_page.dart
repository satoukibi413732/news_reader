import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.error,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '404，网页飘走了',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
