import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;

  const ProfileDetailPage({
    required this.name,
    required this.age,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
