import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class ComentHomePage extends StatefulWidget {
  const ComentHomePage({super.key});

  @override
  State<ComentHomePage> createState() => _ComentHomePageState();
}

class _ComentHomePageState extends State<ComentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "welcome back",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
              const Text(
                "SAMANTHA WILLIAM",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const TextField(),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan),
                child: const Column(
                  children: [
                    Image(
                      image: AssetImage("assets/image.png"),
                      height: 120,
                    ),
                    Text(
                      "Image Here",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.orange, fontSize: 50),
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 204, 214, 216)),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 25,),
                                    Icon(
                                      Icons.phone,
                                      color: Colors.cyan,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 204, 214, 216)),
                                        child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 25,),
                                    Icon(
                                      Icons.phone,
                                      color: Colors.cyan,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "best seller",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(color: Colors.orange, fontSize: 25),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
