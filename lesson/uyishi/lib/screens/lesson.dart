import 'package:uyishi/screens/kirish.dart';
import 'package:uyishi/screens/profilc.dart';
import 'package:flutter/material.dart';
import 'package:uyishi/screens/dateiling.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> pages = [const ProfileDetailPage(profile: {},), const Kirish(isLogin: true,), Profilc(profile: const {}, onTap: () {  },)];
  int _selectPage = 0;

  @override
  void initState() {
    changeIndex();
    super.initState();
  }

  changeIndex() async {
    for (var i = 0; i < 3; i++) {
      await Future.delayed(const Duration(seconds: 1));
      _selectPage = i;
      setState(() {});
    }
  }

  @override
  void reassemble() {
    _selectPage = 0;
    setState(() {});
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectPage,
        selectedItemColor: Colors.deepOrange,
        showUnselectedLabels: true,
        onTap: (e) {
          // print(e);
          setState(() {
            _selectPage = e;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility_new), label: "Profile"),
        ],
      ),
    );
  }
}
