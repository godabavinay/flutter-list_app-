import 'package:flutter/material.dart';

import '../ui_elements/title_default.dart';
import './price_tag.dart';
import './address_tag.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  Widget _buildTitlePriceRow() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(product['title']),
          SizedBox(
            width: 8,
          ),
          PriceTag(product['price'].toString()),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info),
          color: Colors.grey,
          onPressed: () {
            Navigator.pushNamed<bool>(
                context, '/product/' + productIndex.toString());
          },
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () {
            Navigator.pushNamed<bool>(
                context, '/product/' + productIndex.toString());
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          _buildTitlePriceRow(),
          AddressTag('Cream Stone, MVP Colony'),
          _buildActionButtons(context),
        ],
      ),
    );
  }
}
