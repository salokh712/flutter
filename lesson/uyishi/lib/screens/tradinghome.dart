import 'package:flutter/material.dart';
import 'package:uyishi/screens/add.dart';
import 'package:uyishi/screens/hisob.dart';
import 'package:uyishi/screens/hometradin.dart';

class TradingHome extends StatefulWidget {
  const TradingHome({super.key});

  @override
  State<TradingHome> createState() => _TradingHomeState();
}

class _TradingHomeState extends State<TradingHome> {


 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {},
          ),
          title: const Text('Uzbekistan, Tashkent', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          bottom:const TabBar(
            labelColor: Colors.black,
            tabs: const [
              Tab(text: "Buy"),
              Tab(text: "Sell"),
              Tab(text: "Hisobot"),
            ],
          ),
        ),
        body:
         Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Salom, Hush kelibsiz!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Bugunga qanday rejalar bor?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: const [
                    Icon(Icons.trending_up_sharp, color: Colors.black, size: 80),
                    SizedBox(width: 90),
                    Icon(Icons.trending_down_sharp, color: Colors.black, size: 80),
                    SizedBox(width: 120),
                    Icon(Icons.calculate, color: Colors.black, size: 80),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 15),
                    Text(
                      "buy",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 150),
                    Text(
                      "sell",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 120),
                    Text(
                      "hisobot",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage('assets/images.jpeg'),
                           width: 500,
                           height: 500,
                          ),
                        ] 
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/bw_4x.jpg'),
                width: 500,
                height: 500,
              ),
                        ]
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/bw_4x.jpg'),
                width: 500,
                height: 500,
              ),
                        ]
                      )
                      
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}

