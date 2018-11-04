import 'package:flutter/material.dart';

import './loginScreen.dart';


void main() => runApp(new Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'JuteBag Login',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginState(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginState extends StatefulWidget {
  @override
  _LoginStateState createState() => new _LoginStateState();
}

class _LoginStateState extends State<LoginState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: new Column(
          children: <Widget>[LoginScreen()
          ],
      ),)
    );
  }
}
