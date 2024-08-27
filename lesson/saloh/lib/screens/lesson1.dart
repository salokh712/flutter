import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradientTestPage extends StatelessWidget {
  const GradientTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Gradient test",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.85,
                ),
                dismissDirection: DismissDirection.horizontal,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.green,
                content: const Text(
                  "O'zbekiston bayrog'i",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ));
            },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.white, Colors.green],
                ),
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      RotatedBox(
                        quarterTurns: 90,
                        child: SvgPicture.asset(
                          'assets/moon.svg',
                          height: 50,
                          width: 50,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: List.generate(
                              3,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                4,
                                (index) => Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CircularProgressIndicator(),
          CupertinoActivityIndicator(),
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}
