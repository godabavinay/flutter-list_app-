import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('[ProductManager] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager state] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager state] didUpdate()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager state] build()');
    return Column(
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
        Products(_products)
      ],
    );
  }
}
