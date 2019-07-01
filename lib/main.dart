import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Ice Cream'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text('Add Product'),
                onPressed: () {
                  setState(() {
                   _products.add('Ted Ice Cream'); 
                  });
                },
              ),
            ),
            Column(
                children: _products
                    .map(
                      (element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/ice-cream.jpg'),
                                Text(element)
                              ],
                            ),
                          ),
                    )
                    .toList()),
          ],
        ),
      ),
    );
  }
}
