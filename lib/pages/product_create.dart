import 'package:flutter/material.dart';

class ProductCreate extends StatefulWidget {
  final Function addProduct;

  ProductCreate(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreateState();
  }
}

class _ProductCreateState extends State<ProductCreate> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product title'),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product description'),
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
            maxLines: 4,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product price'),
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
            keyboardType: TextInputType.number,
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': titleValue,
                'description': descriptionValue,
                'price': priceValue,
                'image': 'assets/ice-cream.jpg'
              };
              widget.addProduct(product);
            },
          )
        ],
      ),
    );
  }
}
