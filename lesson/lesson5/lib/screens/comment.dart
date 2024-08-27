import 'package:flutter/material.dart';
import 'package:lesson5/screens/coment_home_page.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 14, 92),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  const Text(
                    "EXPOLLER",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange),
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              const Text(
                "Find production easir here",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 500,
                          height: 140,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
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
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: 500,
                            height: 40,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Colors.white),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  "salom",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }),
              Row(
                children: [
                  const SizedBox(
                    width: 90,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ComentHomePage()));
                    },
                    child: const Text(
                      "davom etish",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
