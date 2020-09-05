import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print('going to reg screen');
              Navigator.pushNamed(context, "reg");
            },
            child: Text('Registered'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
