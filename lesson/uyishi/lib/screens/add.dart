import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _HometradinState();
}

class _HometradinState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hometradin'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding:  EdgeInsets.all(.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  
                },
                child: const Text(
                  "Tradin bo'yicha nima qidirmoqchisiz?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  
                ),
              ),
            
          ]
        ),
      ),
    );
  }
}