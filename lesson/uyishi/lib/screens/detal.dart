import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String team = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tafsilotlar'),
      ),
      body: Center(
        child: Text('Siz tanladingiz: $team'),
      ),
    );
  }
}