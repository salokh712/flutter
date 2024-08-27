import 'package:flutter/material.dart';
import 'package:uyishi/screens/add.dart';
import 'package:uyishi/screens/hisob.dart';
import 'package:uyishi/screens/myproject.dart';
import 'package:uyishi/screens/myproject2.dart';
import 'package:uyishi/screens/myproject3.dart';
import 'package:uyishi/screens/tradinghome.dart';

class BottomBar extends StatefulWidget {
   const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> widgetList = [const TradingHome(),const Add(),const ProfilePage()];
 int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.black, 
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.orange,
        onTap: (e){
          index = e;
          setState(() {
            
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Asosiy"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Qidirmoq"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Hisob"),],
      ),
    );
  }
}