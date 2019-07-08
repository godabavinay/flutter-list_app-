import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    print('[ProductManager state] initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager state] didUpdate()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager state] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: Products(_products, deleteProduct: _deleteProduct),
        )
      ],
    );
  }
}
