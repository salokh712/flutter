import 'package:exam/screens/exams.dart';
// import 'package:exam/screens/page2.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: CityListScreen() ,
      theme: ThemeData(primaryColor: Colors.white)
    );
  }
}