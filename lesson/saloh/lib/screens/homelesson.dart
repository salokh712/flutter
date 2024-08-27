import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Alignment> alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomLeft,
    Alignment.bottomRight
  ];
  List<Color> colors = [Colors.black, Colors.green, Colors.yellow, Colors.blue];

  void swapAlignments() {
    setState(() {
      alignments.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saloh'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: swapAlignments,
          ),
        ],
      ),
      body: Stack(
        children: [
          for (int i = 0; i < alignments.length; i++)
            Align(
              alignment: alignments[i],
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      colors[i],
                      Colors.white,
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
        ],
      ),
    );
  }
}
