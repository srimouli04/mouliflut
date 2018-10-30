// Increment and Decrement quantity widget

import 'package:flutter/material.dart';

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

class QuantityPicker extends StatefulWidget {
  @override
  _QuantityPicker createState() => new _QuantityPicker();
}

class _QuantityPicker extends State<QuantityPicker> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) // To prevent negative values for quantity of items
      {
        _counter = 0;
        if (_counter == 0){
                   Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Add Quantity')));
                }
      }
    });
  }

  Widget build(BuildContext context) {
    return ButtonTheme.bar(
        child: ButtonBar(
      children: <Widget>[
        FlatButton(
          child: new Text('-',
              style: TextStyle(
                fontSize: 26.0,
              )),
          onPressed: _decrementCounter,
        ),
        new Text('$_counter',
            style: TextStyle(
              fontSize: 20.0,
            )),
        FlatButton(
          child: new Text('+',
              style: TextStyle(
                fontSize: 26.0,
              )),
          onPressed: _incrementCounter,
        ),
      ],
    ));
  }
}
