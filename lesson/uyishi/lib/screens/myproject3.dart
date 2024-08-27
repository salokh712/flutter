// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uyishi/screens/bottom.dart';
import 'package:uyishi/screens/myproject.dart';
import 'package:uyishi/screens/tradinghome.dart';
import 'package:uyishi/screens/myproject3.dart';
// import 'package:uyishi/screens/widget/login.dart';
import 'package:uyishi/widget/ok.dart';
// import 'package:uyishi/screens/widget/login.dart';

class MyProject3 extends StatefulWidget {
  const MyProject3({super.key});

  @override
  State<MyProject3> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
               Colors.white,
               Colors.white,
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(double.infinity, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: (){},
                
                child: const Text(
                  "Bizni tanlaganingiz uchun raxmat!    siz endi bizning trading foydalanuvchimizsiz!", 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              MainButton2(title: "Davom etish", ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomBar()));}),
            ],
          ),
        )
      ),
    );
  }
}

// 935511556