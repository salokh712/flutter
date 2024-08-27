import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bacColor = Colors.green;
  double height = 200;
  double width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bacColor,
        title: const Text(
          'Our Project',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        leading: IconButton(
          onPressed: () {
            if (Icons.menu == Icons.menu) {
              bacColor = Colors.red;
            } else {
              bacColor = Colors.green;
            }
            setState(() {});
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.flag,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.safety_check,
            color: Colors.deepOrange,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/300"),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.center,
                height: height,
                width: width,
                child: const Text(
                  "Container",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              const SizedBox(height: 150),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            ],
          ),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              const SizedBox(height: 150),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            ],
          ),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              const SizedBox(height: 150),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            ],
          ),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              const SizedBox(height: 150),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1719386217659-6bde4641915c?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=80&q=80"),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              height: 150,
              width: 200,
              child: const Text(
                "Container",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row (
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.save),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Save")),
              OutlinedButton(onPressed: () {}, child: const Text("Save")),
            ],
            
          ),
        ],
      ),
    );
  }
}
