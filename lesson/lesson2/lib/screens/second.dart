import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("homepage"),
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemCount: 14,
       itemBuilder: ( context,  index) { return  Container(
        height: 200,
        width: 200,
        child: FadeInImage(
          placeholder: AssetImage("/load.gif"), 
          image: NetworkImage("https://picsum.photos/id/$index/200/300",),
          fit: BoxFit.cover,
          ),
       );
        
      },
      ),
    );
  }
}