import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.pinkAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: ProductManager(),
      ),
    );
  }
}
