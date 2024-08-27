import 'package:flutter/material.dart';
import 'package:uyishi/screens/myproject.dart'; // Ikkinchi sahifa uchun import

class Trading extends StatefulWidget {
  const Trading({super.key});

  @override
  State<Trading> createState() => _TradingState();
}

class _TradingState extends State<Trading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
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
            children: [
             const  SizedBox(height: 50),
             
              const SizedBox(height: 20),
              const Image(image: AssetImage('assets/bw_4x.jpg'),
                width: 500,
                height: 500,
              ),
               const Text(
                "SALOM, BU TRADING DASTURIM",
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w600,
                  color: Colors.black, 
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Bu dasturda siz trading sohasi bo'yicha ma'lumot olishingiz mumkun, buningdek siz trading ni o'rganib bo'lganingizdan so'ng bu sahifamizda barcha analizlarni ko'roshingoz mumkun.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black, 
                ),
              ),
              // const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    "..",
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 73, 72, 72),
                    ),
                  ),
                  const  Text(
                    ".",
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const Text(
                    ".",
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 54, 53, 53),
                    ),
                  ),
                  SizedBox(width: 280),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FirstPage()),
                      );
                    },
                 
                   child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
            
                   Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 0, 0),  
                    size: 50,
              ),
            ],
          ),
                   
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

