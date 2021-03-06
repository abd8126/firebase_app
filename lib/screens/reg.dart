import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyReg extends StatefulWidget {
  @override
  _MyRegState createState() => _MyRegState();
}

class _MyRegState extends State<MyReg> {
  var authc = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reg'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              email = value;
            },
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
          ),
          RaisedButton(
            onPressed: () async {
              print(email);
              print(password);
              var user = await authc.createUserWithEmailAndPassword(
                  email: email, password: password);
              print(user);

              if (user != null) {
                Navigator.pushNamed(context, "login");
              }
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}
