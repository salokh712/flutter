import 'package:flutter/material.dart';
class ProfileDetailPage extends StatelessWidget {
  final Map<String, dynamic> profile;

  const ProfileDetailPage({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(profile['avatar']),
              radius: 80.0,
            ),
            const SizedBox(height: 16.0),
            Text(
              profile['name'],
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              '${profile['age']} years old',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
