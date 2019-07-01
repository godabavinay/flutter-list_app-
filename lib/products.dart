import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[Products] constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products] build()');
    return Column(
        children: products
            .map(
              (element) => Card(
                    child: Column(
                      children: <Widget>[
                        // Image.asset('assets/ice-cream.jpg'),
                        Text(element)
                      ],
                    ),
                  ),
            )
            .toList());
  }
}
