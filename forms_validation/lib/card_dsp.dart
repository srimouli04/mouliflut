// Increment and Decrement quantity widget

import 'package:flutter/material.dart';

import './quan_pick.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => new _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Anti Dandruff Shampoo'),
            subtitle: Text('Himalaya'),
          ),
          QuantityPicker()
        ],
      ),
    );
  }
}

