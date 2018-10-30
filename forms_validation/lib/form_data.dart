import 'package:flutter/material.dart';

import './card_dsp.dart';


class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {

    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProductCard(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
              
                print('Input Received');
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
             
                if (_formKey.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Proceed'),
            ),
          ),

        ],
      ),
    );
  }
}
