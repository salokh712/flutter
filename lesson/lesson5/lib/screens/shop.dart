

import 'package:flutter/material.dart';
import 'package:lesson5/const/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int firstValue = 1;
  int secondValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom( 
            backgroundColor: Colors.orange.shade700,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shop,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                "Add to cart",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            color: AppColors.krimacolor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: const Icon(Icons.save_alt_rounded),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/image.png",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "Image Here",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem Ipsum",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Size",
                        style: TextStyle(color: Colors.black),
                      ),
                      DropdownButton(
                        value: firstValue,
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text("XS"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("S"),
                          ),
                        ],
                        onChanged: (e) {
                          setState(() {
                            firstValue = e!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Color",
                        style: TextStyle(color: Colors.black),
                      ),
                      DropdownButton(
                        value: secondValue,
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text("Red"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("Green"),
                          ),
                        ],
                        onChanged: (e) {
                          setState(() {
                            secondValue = e!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 0,
                top: MediaQuery.of(context).size.height * 0.44,
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade700,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      "\$129",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
