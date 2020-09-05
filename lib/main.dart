import 'package:firebase_app/screens/chat.dart';
import 'package:firebase_app/screens/home.dart';
import 'package:firebase_app/screens/login.dart';
import 'package:firebase_app/screens/reg.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/reg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      // home: MyHome(),
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "login": (context) => MyLogin(),
        "chat": (context) => MyChat(),
      },
    ),
  );
}

/*
class MyApp extends StatelessWidget {
  var fsconnect = FirebaseFirestore.instance;

  myget() async {
    var d = await fsconnect.collection("students").get();
    // print(d.docs[0].data());

    for (var i in d.docs) {
      print(i.data());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Firebase Firestore App'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('send data'),
            onPressed: () {
              fsconnect.collection("students").add({
                'name': 'sarah',
                'title': 'xyz',
                'email': 'sarah@gmail.com',
              });
              print("send ..");
            },
          ),
          RaisedButton(
            child: Text('get data'),
            onPressed: () {
              myget();
              print("get data ...");
            },
          )
        ],
      ),
    ));
  }
}
*/
