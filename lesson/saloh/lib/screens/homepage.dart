import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("home page"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onLongPress: () {
              Future.delayed(Duration(seconds: 5)).then((e) {
                index +=100;
                setState(() {});
            },
            );
            },
            onTap: (){
              setState(() {
                index ++;
              });
            },
            child: Text("salom $index"),
          ),
          const Icon(
            Icons.search,
            color: Colors.black,
            size: 50,
          ),
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),

              ),
              child: const Text(
                "salom",
                style: TextStyle(color: Colors.cyan, ),
            ),
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1719386217659-6bde4641915c?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=80&q=80"),
            
          )
        ],
      ),
    );
  }
}