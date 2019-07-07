import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/ice-cream.jpg'),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Details!'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text('BACK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}