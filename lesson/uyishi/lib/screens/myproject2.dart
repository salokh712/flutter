import 'package:flutter/material.dart';
import 'package:uyishi/screens/myproject3.dart';
import 'package:uyishi/widget/login.dart';
class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              const Text(
                "Hisob yaratish",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              
              const SizedBox(height: 100),
              const Text(
                "Hisob nomi",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
      
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side:const  BorderSide(color: Colors.black, width: 2),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {},
                child: const Text(
                  "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Parol",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: (){},
                
                child: const Text(
                  "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  
                ),
              ),
              const SizedBox(height: 30),
              MainButton(title: "Davom etsh", ontap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProject3()));
              }),
              const SizedBox(height: 30),
              
               const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "parolni eslab qoldingmi?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    "Hisobing bormi?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}

