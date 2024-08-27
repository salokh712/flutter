import 'package:flutter/material.dart';

class MainSceen extends StatefulWidget {
  const MainSceen({super.key});

  @override
  State<MainSceen> createState() => _MainSceenState();
}

class _MainSceenState extends State<MainSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 200,
            top: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.7,
            child: CircleAvatar(
              backgroundColor: Colors.pink.withOpacity(0.1),
              radius: 120,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Padding(padding: EdgeInsets.only(left: 30, right: 70),)
            ],),
          )
        ],
      ),
    );
  }
}
