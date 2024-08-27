import 'package:flutter/material.dart';
import 'package:uyishi/screens/bottom.dart';
import 'package:uyishi/screens/newlesson.dart';
import 'package:uyishi/screens/soloproject.dart';
import 'package:uyishi/screens/trading.dart';
import 'package:uyishi/screens/tradinghome.dart';
// import 'package:uyishi/screens/myproject.dart';
// import 'package:uyishi/screens/profules.dart';
// import 'package:uyishi/screens/salomscreen.dart';
// import 'package:uyishi/screens/detal.dart';
// import 'package:uyishi/screens/home.dart';
// import 'package:uyishi/screens/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator va ListView Misoli',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dialogBackgroundColor: Colors.white,
      ),
      home:  Xabar(),

    );
  }
}
