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
  String _titleValue;
  String _descriptionValue;
  double _priceValue;

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
                _titleValue = value;
              });
            },
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product description'),
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
            maxLines: 4,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product price'),
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': _titleValue,
                'description': _descriptionValue,
                'price': _priceValue,
                'image': 'assets/ice-cream.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/products');
            },
          )
        ],
      ),
    );
  }
}
