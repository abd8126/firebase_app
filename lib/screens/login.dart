import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
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

              var signIn = await authc.signInWithEmailAndPassword(
                  email: email, password: email);
              print(signIn);

              if (signIn != null) {
                Navigator.pushNamed(context, "chat");
              }
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}
