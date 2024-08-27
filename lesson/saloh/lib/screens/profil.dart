import 'package:flutter/material.dart';

class Menue extends StatefulWidget {
  String? name;
  String? age;
  String? imageUrl;
   Menue({
    super.key,
  });

  @override
  State<Menue> createState() => _menueState();
}

class _menueState extends State<Menue> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Profile')),
    );
  }
}