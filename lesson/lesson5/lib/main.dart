import 'package:flutter/material.dart';
import 'package:lesson5/screens/card.dart';
import 'package:lesson5/screens/comment.dart';
import 'package:lesson5/screens/shop.dart';
import 'package:lesson5/screens/shop_card.dart';

void main(List<String> args) {
 runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Cards(),
    );
  }
}