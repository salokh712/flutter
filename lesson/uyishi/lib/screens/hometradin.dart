import 'package:flutter/material.dart';

class Hometradin extends StatefulWidget {
  const Hometradin({super.key});

  @override
  State<Hometradin> createState() => _HometradinState();
}

class _HometradinState extends State<Hometradin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hometradin'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
              }, child: null,
                // Tugmani bosganda nima qilish kerakligini bu yerda belgilashingiz mumkin
            ),
            
          ]
        ),
      ),
    );
  }
}