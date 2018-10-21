// Increment and Decrement quantity widget

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'INC_DEC_Widget',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'INC_DEC_Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: Card(
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
