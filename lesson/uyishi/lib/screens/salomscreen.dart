// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'kirish.dart';
class Salomscreen extends StatelessWidget {
  const Salomscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('salom nma gap ', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kirish(isLogin: true)),
                );
              },
              child: const Text('kirihohlaysanmi '),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Kirish(isLogin: false)),
                );
              },
              child: const Text('yangi foydalaniuvchimisan'),
            ),
          ],
        ),
      ),
    );
  }
}


