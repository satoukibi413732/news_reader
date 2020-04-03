import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Eorror 404'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.error,
            size: 36,
            color: Colors.red,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '404',
              style: TextStyle(fontSize: 36),
            ),
          )
        ],
      ),
    );
  }
}
