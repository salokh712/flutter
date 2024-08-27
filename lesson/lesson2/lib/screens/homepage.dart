import 'package:flutter/material.dart';
import 'package:lesson2/screens/second.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("homepage"),
      ),
      body: ListView.builder( 
      shrinkWrap: true ,
       itemBuilder: ( context, index) { return ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondPage()));
        },
        title: Text("foydalanuvchi $index"),
        subtitle: Text("foydalanuvchi soni ko'p"),
        trailing: Icon(Icons.people),
       );
        },
      ),
    );
  }
}